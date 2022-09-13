import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wayat/app_state/home_state/home_state.dart';
import 'package:wayat/domain/contact/contact.dart';
import 'package:wayat/features/contacts/controller/contacts_page_controller.dart';
import 'package:wayat/features/contacts/controller/friends_controller/friends_controller.dart';
import 'package:wayat/features/contacts/pages/contacts_page/friends_page/friends_page.dart';
import 'package:wayat/features/contacts/widgets/contact_tile.dart';
import 'package:wayat/lang/app_localizations.dart';
import 'package:wayat/lang/lang_singleton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobx/mobx.dart' as mobx;
import 'package:wayat/services/contact/contact_service.dart';

import 'friends_page_test.mocks.dart';

@GenerateMocks(
    [ContactsPageController, FriendsController, HomeState, ContactService])
void main() async {
  final FriendsController mockFriendsController = MockFriendsController();
  final ContactsPageController mockContactsPageController =
      MockContactsPageController();
  final HomeState mockHomeState = MockHomeState();

  setUpAll(() {
    HttpOverrides.global = null;

    GetIt.I.registerSingleton<LangSingleton>(LangSingleton());
    GetIt.I.registerSingleton<HomeState>(mockHomeState);
    GetIt.I
        .registerSingleton<ContactsPageController>(mockContactsPageController);
    when(mockContactsPageController.friendsController)
        .thenReturn(mockFriendsController);
  });

  Widget _createApp(Widget body) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) {
        GetIt.I.get<LangSingleton>().initialize(context);
        return GetIt.I.get<LangSingleton>().appLocalizations.appTitle;
      },
      home: Scaffold(
        body: body,
      ),
    );
  }

  testWidgets("Friends page title shows the correct number of contacts",
      (tester) async {
    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of([]));

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(
        find.text("${appLocalizations.friendsPageTitle} (0)"), findsOneWidget);

    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of(_generateContacts(["A", "B", "C"])));

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(
        find.text("${appLocalizations.friendsPageTitle} (3)"), findsOneWidget);
  });

  testWidgets("Friends Page shows the button to navigate to groups",
      (tester) async {
    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of([]));

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(
        find.ancestor(
            of: find.byIcon(Icons.chevron_right),
            matching: find.byType(InkWell)),
        findsOneWidget);
    expect(
        find.ancestor(
            of: find.text(appLocalizations.groupsTitle),
            matching: find.byType(InkWell)),
        findsOneWidget);
  });

  testWidgets("The friends list shows the correct number of contacts",
      (tester) async {
    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of([]));

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(find.byType(ContactTile), findsNothing);

    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of(_generateContacts(["A", "B", "C"])));

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(find.byType(ContactTile), findsNWidgets(3));

    expect(
        find.text("${appLocalizations.friendsPageTitle} (3)"), findsOneWidget);
  });

  testWidgets("Tapping a contact tile tries to navigate to ContactProfile",
      (tester) async {
    Contact contact = _contactFactory("A");
    when(mockFriendsController.filteredContacts)
        .thenReturn(mobx.ObservableList.of([contact]));

    await tester.pumpWidget(_createApp(FriendsPage()));

    when(mockHomeState.setSelectedContact(contact, appLocalizations.contacts))
        .thenReturn(null);

    await tester.pumpAndSettle();

    await tester.tap(find.byType(ContactTile));
    await tester.pumpAndSettle();

    verify(mockHomeState.setSelectedContact(contact, appLocalizations.contacts))
        .called(1);
  });

  testWidgets("Tapping the icon in ContactTile removes the contact",
      (tester) async {
    Contact contact = _contactFactory("A");
    ContactService mockContactService = MockContactService();
    when(mockContactService.removeContact(contact))
        .thenAnswer((_) => Future.value(true));
    FriendsController friendsController =
        FriendsController(contactService: mockContactService);
    friendsController.allContacts = mobx.ObservableList.of([contact]);
    friendsController.filteredContacts = mobx.ObservableList.of([contact]);

    when(mockContactsPageController.friendsController)
        .thenReturn(friendsController);

    await tester.pumpWidget(_createApp(FriendsPage()));
    await tester.pumpAndSettle();

    expect(find.byType(ContactTile), findsOneWidget);

    await tester.tap(find.byIcon(Icons.close));
    await tester.pumpAndSettle();

    expect(find.byType(ContactTile), findsNothing);
  });
}

Contact _contactFactory(String contactName) {
  return Contact(
    available: true,
    id: "id $contactName",
    name: contactName,
    email: "Contact email",
    imageUrl: "https://example.com/image",
    phone: "123",
  );
}

List<Contact> _generateContacts(List<String> names) {
  return names.map((name) => _contactFactory(name)).toList();
}
