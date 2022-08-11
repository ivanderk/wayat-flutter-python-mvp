from typing import Optional, NewType
from pydantic import BaseModel

IDType = NewType("IDType", str)


class UserID(BaseModel):
    id: IDType


# Requests
class UpdateUserRequest(BaseModel):
    name: Optional[str]
    phone: Optional[str]
    onboarding_completed: Optional[bool]


class AddContactsRequest(BaseModel):
    users: list[IDType]


class FindByPhoneRequest(BaseModel):
    phones: list[str]


class UpdatePreferencesRequest(BaseModel):
    do_not_disturb: bool
    share_location: bool


class UserDTO(UpdateUserRequest):
    email: str
    id: str
    image_url: Optional[str]
    share_location: bool
    do_not_disturb: bool
    onboarding_completed: bool


# Responses
class UserProfileResponse(UserDTO):
    new_user: bool


class UserWithPhoneResponse(UserID):
    phone: str
    name: str
    image_url: str


class ListUsersWithPhoneResponse(BaseModel):
    users: list[UserWithPhoneResponse]
