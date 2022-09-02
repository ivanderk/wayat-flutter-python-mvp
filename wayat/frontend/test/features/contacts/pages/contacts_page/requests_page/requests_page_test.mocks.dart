// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/contacts/pages/contacts_page/requests_page/requests_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;

import 'package:flutter/cupertino.dart' as _i5;
import 'package:http/http.dart' as _i7;
import 'package:mobx/mobx.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/domain/contact/contact.dart' as _i9;
import 'package:wayat/features/contacts/controller/contacts_page_controller.dart'
    as _i8;
import 'package:wayat/features/contacts/controller/friends_controller/friends_controller.dart'
    as _i3;
import 'package:wayat/features/contacts/controller/requests_controller/requests_controller.dart'
    as _i2;
import 'package:wayat/features/contacts/controller/suggestions_controller/suggestions_controller.dart'
    as _i4;
import 'package:wayat/services/friend_requests/requests_service.dart' as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRequestsController_0 extends _i1.SmartFake
    implements _i2.RequestsController {
  _FakeRequestsController_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeFriendsController_1 extends _i1.SmartFake
    implements _i3.FriendsController {
  _FakeFriendsController_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSuggestionsController_2 extends _i1.SmartFake
    implements _i4.SuggestionsController {
  _FakeSuggestionsController_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDateTime_3 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDuration_4 extends _i1.SmartFake implements Duration {
  _FakeDuration_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeTextEditingController_5 extends _i1.SmartFake
    implements _i5.TextEditingController {
  _FakeTextEditingController_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_6 extends _i1.SmartFake
    implements _i6.ReactiveContext {
  _FakeReactiveContext_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeObservableList_7<T> extends _i1.SmartFake
    implements _i6.ObservableList<T> {
  _FakeObservableList_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeResponse_8 extends _i1.SmartFake implements _i7.Response {
  _FakeResponse_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeStreamedResponse_9 extends _i1.SmartFake
    implements _i7.StreamedResponse {
  _FakeStreamedResponse_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [ContactsPageController].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactsPageController extends _i1.Mock
    implements _i8.ContactsPageController {
  MockContactsPageController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RequestsController get requestsController =>
      (super.noSuchMethod(Invocation.getter(#requestsController),
              returnValue: _FakeRequestsController_0(
                  this, Invocation.getter(#requestsController)))
          as _i2.RequestsController);
  @override
  set requestsController(_i2.RequestsController? _requestsController) => super
      .noSuchMethod(Invocation.setter(#requestsController, _requestsController),
          returnValueForMissingStub: null);
  @override
  _i3.FriendsController get friendsController =>
      (super.noSuchMethod(Invocation.getter(#friendsController),
              returnValue: _FakeFriendsController_1(
                  this, Invocation.getter(#friendsController)))
          as _i3.FriendsController);
  @override
  set friendsController(_i3.FriendsController? _friendsController) => super
      .noSuchMethod(Invocation.setter(#friendsController, _friendsController),
          returnValueForMissingStub: null);
  @override
  _i4.SuggestionsController get suggestionsController =>
      (super.noSuchMethod(Invocation.getter(#suggestionsController),
              returnValue: _FakeSuggestionsController_2(
                  this, Invocation.getter(#suggestionsController)))
          as _i4.SuggestionsController);
  @override
  set suggestionsController(
          _i4.SuggestionsController? _suggestionsController) =>
      super.noSuchMethod(
          Invocation.setter(#suggestionsController, _suggestionsController),
          returnValueForMissingStub: null);
  @override
  DateTime get timeFriendsUpdate =>
      (super.noSuchMethod(Invocation.getter(#timeFriendsUpdate),
              returnValue:
                  _FakeDateTime_3(this, Invocation.getter(#timeFriendsUpdate)))
          as DateTime);
  @override
  set timeFriendsUpdate(DateTime? _timeFriendsUpdate) => super.noSuchMethod(
      Invocation.setter(#timeFriendsUpdate, _timeFriendsUpdate),
      returnValueForMissingStub: null);
  @override
  DateTime get timeRequestsUpdate =>
      (super.noSuchMethod(Invocation.getter(#timeRequestsUpdate),
              returnValue:
                  _FakeDateTime_3(this, Invocation.getter(#timeRequestsUpdate)))
          as DateTime);
  @override
  set timeRequestsUpdate(DateTime? _timeRequestsUpdate) => super.noSuchMethod(
      Invocation.setter(#timeRequestsUpdate, _timeRequestsUpdate),
      returnValueForMissingStub: null);
  @override
  DateTime get timeSuggestionsUpdate => (super.noSuchMethod(
          Invocation.getter(#timeSuggestionsUpdate),
          returnValue:
              _FakeDateTime_3(this, Invocation.getter(#timeSuggestionsUpdate)))
      as DateTime);
  @override
  set timeSuggestionsUpdate(DateTime? _timeSuggestionsUpdate) =>
      super.noSuchMethod(
          Invocation.setter(#timeSuggestionsUpdate, _timeSuggestionsUpdate),
          returnValueForMissingStub: null);
  @override
  Duration get maxTimeBetweenUpdates => (super.noSuchMethod(
          Invocation.getter(#maxTimeBetweenUpdates),
          returnValue:
              _FakeDuration_4(this, Invocation.getter(#maxTimeBetweenUpdates)))
      as Duration);
  @override
  set maxTimeBetweenUpdates(Duration? _maxTimeBetweenUpdates) =>
      super.noSuchMethod(
          Invocation.setter(#maxTimeBetweenUpdates, _maxTimeBetweenUpdates),
          returnValueForMissingStub: null);
  @override
  _i5.TextEditingController get searchBarController =>
      (super.noSuchMethod(Invocation.getter(#searchBarController),
              returnValue: _FakeTextEditingController_5(
                  this, Invocation.getter(#searchBarController)))
          as _i5.TextEditingController);
  @override
  set searchBarController(_i5.TextEditingController? _searchBarController) =>
      super.noSuchMethod(
          Invocation.setter(#searchBarController, _searchBarController),
          returnValueForMissingStub: null);
  @override
  bool get viewSentRequests =>
      (super.noSuchMethod(Invocation.getter(#viewSentRequests),
          returnValue: false) as bool);
  @override
  set viewSentRequests(bool? value) =>
      super.noSuchMethod(Invocation.setter(#viewSentRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  void setviewSentRequests(bool? view) =>
      super.noSuchMethod(Invocation.method(#setviewSentRequests, [view]),
          returnValueForMissingStub: null);
  @override
  void setSearchBarText(String? text) =>
      super.noSuchMethod(Invocation.method(#setSearchBarText, [text]),
          returnValueForMissingStub: null);
  @override
  void updateTabData(int? index) =>
      super.noSuchMethod(Invocation.method(#updateTabData, [index]),
          returnValueForMissingStub: null);
}

/// A class which mocks [RequestsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestsController extends _i1.Mock
    implements _i2.RequestsController {
  MockRequestsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FriendsController get friendsController =>
      (super.noSuchMethod(Invocation.getter(#friendsController),
              returnValue: _FakeFriendsController_1(
                  this, Invocation.getter(#friendsController)))
          as _i3.FriendsController);
  @override
  set friendsController(_i3.FriendsController? _friendsController) => super
      .noSuchMethod(Invocation.setter(#friendsController, _friendsController),
          returnValueForMissingStub: null);
  @override
  String get textFilter =>
      (super.noSuchMethod(Invocation.getter(#textFilter), returnValue: '')
          as String);
  @override
  set textFilter(String? _textFilter) =>
      super.noSuchMethod(Invocation.setter(#textFilter, _textFilter),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i9.Contact> get filteredPendingRequests =>
      (super.noSuchMethod(Invocation.getter(#filteredPendingRequests),
              returnValue: _FakeObservableList_7<_i9.Contact>(
                  this, Invocation.getter(#filteredPendingRequests)))
          as _i6.ObservableList<_i9.Contact>);
  @override
  set filteredPendingRequests(_i6.ObservableList<_i9.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredPendingRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i9.Contact> get pendingRequests =>
      (super.noSuchMethod(Invocation.getter(#pendingRequests),
              returnValue: _FakeObservableList_7<_i9.Contact>(
                  this, Invocation.getter(#pendingRequests)))
          as _i6.ObservableList<_i9.Contact>);
  @override
  set pendingRequests(_i6.ObservableList<_i9.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#pendingRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i9.Contact> get sentRequests =>
      (super.noSuchMethod(Invocation.getter(#sentRequests),
              returnValue: _FakeObservableList_7<_i9.Contact>(
                  this, Invocation.getter(#sentRequests)))
          as _i6.ObservableList<_i9.Contact>);
  @override
  set sentRequests(_i6.ObservableList<_i9.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#sentRequests, value),
          returnValueForMissingStub: null);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i10.Future<void> updateRequests() =>
      (super.noSuchMethod(Invocation.method(#updateRequests, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> sendRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#sendRequest, [contact]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> rejectRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#rejectRequest, [contact]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> acceptRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#acceptRequest, [contact]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  _i10.Future<void> unsendRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#unsendRequest, [contact]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  void setTextFilter(String? text) =>
      super.noSuchMethod(Invocation.method(#setTextFilter, [text]),
          returnValueForMissingStub: null);
}

/// A class which mocks [RequestsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestsService extends _i1.Mock implements _i11.RequestsService {
  MockRequestsService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get baseUrl =>
      (super.noSuchMethod(Invocation.getter(#baseUrl), returnValue: '')
          as String);
  @override
  set baseUrl(String? _baseUrl) =>
      super.noSuchMethod(Invocation.setter(#baseUrl, _baseUrl),
          returnValueForMissingStub: null);
  @override
  _i10.Future<Map<String, List<_i9.Contact>>> getRequests() =>
      (super.noSuchMethod(Invocation.method(#getRequests, []),
              returnValue: _i10.Future<Map<String, List<_i9.Contact>>>.value(
                  <String, List<_i9.Contact>>{}))
          as _i10.Future<Map<String, List<_i9.Contact>>>);
  @override
  _i10.Future<bool> acceptRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#acceptRequest, [contact]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<bool> rejectRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#rejectRequest, [contact]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<bool> sendRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#sendRequest, [contact]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<bool> sendRequests(List<_i9.Contact>? contacts) =>
      (super.noSuchMethod(Invocation.method(#sendRequests, [contacts]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<bool> unsendRequest(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#unsendRequest, [contact]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<Map<String, dynamic>> sendGetRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendGetRequest, [subPath]),
              returnValue:
                  _i10.Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i10.Future<Map<String, dynamic>>);
  @override
  _i10.Future<_i7.Response> sendPostRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPostRequest, [subPath, body]),
              returnValue: _i10.Future<_i7.Response>.value(_FakeResponse_8(
                  this, Invocation.method(#sendPostRequest, [subPath, body]))))
          as _i10.Future<_i7.Response>);
  @override
  _i10.Future<_i7.StreamedResponse> sendPostImageRequest(
          String? subPath, String? filePath, String? type) =>
      (super.noSuchMethod(
              Invocation.method(#sendPostImageRequest, [subPath, filePath, type]),
              returnValue: _i10.Future<_i7.StreamedResponse>.value(
                  _FakeStreamedResponse_9(
                      this,
                      Invocation.method(
                          #sendPostImageRequest, [subPath, filePath, type]))))
          as _i10.Future<_i7.StreamedResponse>);
  @override
  _i10.Future<bool> sendPutRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPutRequest, [subPath, body]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<bool> sendDelRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendDelRequest, [subPath]),
          returnValue: _i10.Future<bool>.value(false)) as _i10.Future<bool>);
}

/// A class which mocks [FriendsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockFriendsController extends _i1.Mock implements _i3.FriendsController {
  MockFriendsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get textFilter =>
      (super.noSuchMethod(Invocation.getter(#textFilter), returnValue: '')
          as String);
  @override
  set textFilter(String? _textFilter) =>
      super.noSuchMethod(Invocation.setter(#textFilter, _textFilter),
          returnValueForMissingStub: null);
  @override
  List<_i9.Contact> get allContacts =>
      (super.noSuchMethod(Invocation.getter(#allContacts),
          returnValue: <_i9.Contact>[]) as List<_i9.Contact>);
  @override
  set allContacts(List<_i9.Contact>? _allContacts) =>
      super.noSuchMethod(Invocation.setter(#allContacts, _allContacts),
          returnValueForMissingStub: null);
  @override
  _i6.ObservableList<_i9.Contact> get filteredContacts =>
      (super.noSuchMethod(Invocation.getter(#filteredContacts),
              returnValue: _FakeObservableList_7<_i9.Contact>(
                  this, Invocation.getter(#filteredContacts)))
          as _i6.ObservableList<_i9.Contact>);
  @override
  set filteredContacts(_i6.ObservableList<_i9.Contact>? value) =>
      super.noSuchMethod(Invocation.setter(#filteredContacts, value),
          returnValueForMissingStub: null);
  @override
  List<_i9.Contact> get availableContacts =>
      (super.noSuchMethod(Invocation.getter(#availableContacts),
          returnValue: <_i9.Contact>[]) as List<_i9.Contact>);
  @override
  List<_i9.Contact> get unavailableContacts =>
      (super.noSuchMethod(Invocation.getter(#unavailableContacts),
          returnValue: <_i9.Contact>[]) as List<_i9.Contact>);
  @override
  _i6.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_6(this, Invocation.getter(#context)))
          as _i6.ReactiveContext);
  @override
  _i10.Future<void> updateContacts() =>
      (super.noSuchMethod(Invocation.method(#updateContacts, []),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
  @override
  void setTextFilter(String? text) =>
      super.noSuchMethod(Invocation.method(#setTextFilter, [text]),
          returnValueForMissingStub: null);
  @override
  _i10.Future<void> removeContact(_i9.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#removeContact, [contact]),
              returnValue: _i10.Future<void>.value(),
              returnValueForMissingStub: _i10.Future<void>.value())
          as _i10.Future<void>);
}
