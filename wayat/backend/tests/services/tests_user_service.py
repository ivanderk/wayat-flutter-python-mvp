import unittest
from unittest import TestCase, IsolatedAsyncioTestCase
from unittest.mock import Mock, MagicMock

from app.business.wayat_management.services.user import UserService, map_to_dto
from app.common.infra.firebase import FirebaseAuthenticatedUser
from app.domain.wayat_management.models.user import UserEntity
from app.domain.wayat_management.repositories.status import StatusRepository
from app.domain.wayat_management.repositories.user import UserRepository


class UserServiceTests(IsolatedAsyncioTestCase):

    async def asyncSetUp(self):
        self.mock_user_repo = MagicMock(UserRepository)
        self.mock_status_repo = MagicMock(StatusRepository)
        self.user_service = UserService(self.mock_user_repo, self.mock_status_repo)

    async def test_get_user_that_not_exists_should_create_it(self):
        test_data = FirebaseAuthenticatedUser(uid="test", email="test@email.es", roles=[], picture="test", name="test")
        test_entity = UserEntity(
            document_id=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture
        )

        self.mock_user_repo.get.return_value = None
        self.mock_user_repo.create.return_value = test_entity

        # Call to be tested
        result_dto, is_new_user = await self.user_service.get_or_create(test_data.uid, test_data)

        # Asserts
        self.mock_user_repo.create.assert_called_with(
            uid=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture
        )
        self.mock_status_repo.initialize.assert_called_with(test_data.uid)

        assert is_new_user
        assert result_dto == map_to_dto(test_entity)

    async def test_get_user_that_exists_should_return_it(self):
        test_data = FirebaseAuthenticatedUser(uid="test", email="test@email.es", roles=[], picture="test", name="test")
        test_entity = UserEntity(
            document_id=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture
        )

        self.mock_user_repo.get.return_value = test_entity

        # Call to be tested
        result_dto, is_new_user = await self.user_service.get_or_create(test_data.uid, test_data)

        # Asserts
        self.mock_user_repo.get.assert_called_with(test_data.uid)
        self.mock_user_repo.create.assert_not_called()
        self.mock_status_repo.initialize.assert_not_called()

        assert not is_new_user
        assert result_dto == map_to_dto(test_entity)

    async def test_update_user_should_only_accept_valid_params(self):
        test_data = FirebaseAuthenticatedUser(uid="test", email="test@email.es", roles=[], picture="test", name="test")
        test_entity = UserEntity(
            document_id=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture
        )

        test_update_valid = {
            "name": test_data.name,
            "phone": test_data.phone
        }

        test_update_with_invalid_keys = {
            "name": test_data.name,
            "phone": test_data.phone,
            "invalid": "test"
        }

        # Call to be tested
        await self.user_service.update_user(test_data.uid, **test_update_with_invalid_keys)

        # Asserts
        self.mock_user_repo.update.assert_called_with(document_id=test_data.uid, data=test_update_valid)

    async def test_add_contacts_shoud_add_only_valid_ones(self):
        def mocking_get_user(uid: str):
            if uid == "test" or uid == "test-friend":
                return test_entity
            else:
                return None

        test_data = FirebaseAuthenticatedUser(uid="test", email="test@email.es", roles=[], picture="test", name="test")
        test_entity = UserEntity(
            document_id=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture
        )

        self.mock_user_repo.get.side_effect = mocking_get_user

        # Call to be tested
        await self.user_service.add_contacts(uid=test_data.uid, users=["test-friend", "invalid"])

        # Asserts
        self.mock_user_repo.create_friend_request.assert_called_with(test_data.uid, [test_entity.document_id])

    async def test_get_pending_friend_requests_should_return_ok(self):
        test_data = FirebaseAuthenticatedUser(uid="test", email="test@email.es", roles=[], picture="test", name="test")
        test_pending_data = FirebaseAuthenticatedUser(uid="test-pending", email="test@email.es", roles=[],
                                                      picture="test", name="test-pending")
        test_sent_data = FirebaseAuthenticatedUser(uid="test-sent", email="test@email.es", roles=[],
                                                   picture="test", name="test-sent")
        test_entity = UserEntity(
            document_id=test_data.uid,
            name=test_data.name,
            email=test_data.email,
            phone=test_data.phone,
            image_url=test_data.picture,
            sent_requests=[test_sent_data.uid],
            pending_requests=[test_pending_data.uid]
        )

        test_entity_pending = UserEntity(
            document_id=test_pending_data.uid,
            name=test_pending_data.name,
            email=test_pending_data.email,
            phone=test_pending_data.phone,
            image_url=test_pending_data.picture,
        )

        test_entity_sent = UserEntity(
            document_id=test_sent_data.uid,
            name=test_sent_data.name,
            email=test_sent_data.email,
            phone=test_sent_data.phone,
            image_url=test_sent_data.picture,
        )

        self.mock_user_repo.get.return_value = test_entity

        # Call to be tested
        received, sent = await self.user_service.get_pending_friend_requests(test_data.uid)

        # Asserts
        assert received == test_entity.pending_requests
        assert sent == test_entity.sent_requests
        self.mock_user_repo.get.assert_called_with(test_data.uid)


if __name__ == "__main__":
    unittest.main()
