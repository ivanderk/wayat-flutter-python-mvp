// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/features/contact_profile/contact_profile_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i10;

import 'package:google_maps_flutter/google_maps_flutter.dart' as _i5;
import 'package:http/http.dart' as _i6;
import 'package:mobx/mobx.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/home_state/home_state.dart' as _i13;
import 'package:wayat/app_state/location_state/share_mode.dart' as _i9;
import 'package:wayat/app_state/user_status/user_status_state.dart' as _i7;
import 'package:wayat/domain/contact/contact.dart' as _i12;
import 'package:wayat/domain/location/contact_location.dart' as _i8;
import 'package:wayat/features/contact_profile/controller/contact_profile_controller.dart'
    as _i11;
import 'package:wayat/services/common/http_provider/http_provider.dart' as _i4;
import 'package:wayat/services/status/user_status_service_impl.dart' as _i2;

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

class _FakeUserStatusService_0 extends _i1.SmartFake
    implements _i2.UserStatusService {
  _FakeUserStatusService_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_1 extends _i1.SmartFake
    implements _i3.ReactiveContext {
  _FakeReactiveContext_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeHttpProvider_2 extends _i1.SmartFake implements _i4.HttpProvider {
  _FakeHttpProvider_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeBitmapDescriptor_3 extends _i1.SmartFake
    implements _i5.BitmapDescriptor {
  _FakeBitmapDescriptor_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeClient_4 extends _i1.SmartFake implements _i6.Client {
  _FakeClient_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeResponse_5 extends _i1.SmartFake implements _i6.Response {
  _FakeResponse_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeStreamedResponse_6 extends _i1.SmartFake
    implements _i6.StreamedResponse {
  _FakeStreamedResponse_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [UserStatusState].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStatusState extends _i1.Mock implements _i7.UserStatusState {
  MockUserStatusState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.UserStatusService get userStatusService =>
      (super.noSuchMethod(Invocation.getter(#userStatusService),
              returnValue: _FakeUserStatusService_0(
                  this, Invocation.getter(#userStatusService)))
          as _i2.UserStatusService);
  @override
  List<_i8.ContactLocation> get contacts =>
      (super.noSuchMethod(Invocation.getter(#contacts),
          returnValue: <_i8.ContactLocation>[]) as List<_i8.ContactLocation>);
  @override
  set contacts(List<_i8.ContactLocation>? value) =>
      super.noSuchMethod(Invocation.setter(#contacts, value),
          returnValueForMissingStub: null);
  @override
  _i9.ShareLocationMode get locationMode =>
      (super.noSuchMethod(Invocation.getter(#locationMode),
          returnValue: _i9.ShareLocationMode.active) as _i9.ShareLocationMode);
  @override
  set locationMode(_i9.ShareLocationMode? value) =>
      super.noSuchMethod(Invocation.setter(#locationMode, value),
          returnValueForMissingStub: null);
  @override
  dynamic Function(List<_i8.ContactLocation>) get onContactsRefUpdateCallback =>
      (super.noSuchMethod(Invocation.getter(#onContactsRefUpdateCallback),
              returnValue: (List<_i8.ContactLocation> __p0) => null)
          as dynamic Function(List<_i8.ContactLocation>));
  @override
  set onContactsRefUpdateCallback(
          dynamic Function(List<_i8.ContactLocation>)?
              _onContactsRefUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onContactsRefUpdateCallback, _onContactsRefUpdateCallback),
          returnValueForMissingStub: null);
  @override
  dynamic Function(_i9.ShareLocationMode) get onLocationModeUpdateCallback =>
      (super.noSuchMethod(Invocation.getter(#onLocationModeUpdateCallback),
              returnValue: (_i9.ShareLocationMode __p0) => null)
          as dynamic Function(_i9.ShareLocationMode));
  @override
  set onLocationModeUpdateCallback(
          dynamic Function(_i9.ShareLocationMode)?
              _onLocationModeUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onLocationModeUpdateCallback, _onLocationModeUpdateCallback),
          returnValueForMissingStub: null);
  @override
  _i3.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_1(this, Invocation.getter(#context)))
          as _i3.ReactiveContext);
  @override
  _i10.Future<dynamic> initializeListener() =>
      (super.noSuchMethod(Invocation.method(#initializeListener, []),
          returnValue: _i10.Future<dynamic>.value()) as _i10.Future<dynamic>);
  @override
  void setContactList(List<_i8.ContactLocation>? newContacts) =>
      super.noSuchMethod(Invocation.method(#setContactList, [newContacts]),
          returnValueForMissingStub: null);
  @override
  void setLocationMode(_i9.ShareLocationMode? newMode) =>
      super.noSuchMethod(Invocation.method(#setLocationMode, [newMode]),
          returnValueForMissingStub: null);
}

/// A class which mocks [ContactProfileController].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactProfileController extends _i1.Mock
    implements _i11.ContactProfileController {
  MockContactProfileController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.HttpProvider get httpProvider =>
      (super.noSuchMethod(Invocation.getter(#httpProvider),
              returnValue:
                  _FakeHttpProvider_2(this, Invocation.getter(#httpProvider)))
          as _i4.HttpProvider);
  @override
  bool get shareLocationToContact =>
      (super.noSuchMethod(Invocation.getter(#shareLocationToContact),
          returnValue: false) as bool);
  @override
  set shareLocationToContact(bool? value) =>
      super.noSuchMethod(Invocation.setter(#shareLocationToContact, value),
          returnValueForMissingStub: null);
  @override
  _i3.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_1(this, Invocation.getter(#context)))
          as _i3.ReactiveContext);
  @override
  _i10.Future<_i5.BitmapDescriptor> getMarkerImage(_i12.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#getMarkerImage, [contact]),
              returnValue: _i10.Future<_i5.BitmapDescriptor>.value(
                  _FakeBitmapDescriptor_3(
                      this, Invocation.method(#getMarkerImage, [contact]))))
          as _i10.Future<_i5.BitmapDescriptor>);
  @override
  void openMaps(_i8.ContactLocation? contact) =>
      super.noSuchMethod(Invocation.method(#openMaps, [contact]),
          returnValueForMissingStub: null);
  @override
  _i10.Future<void> setShareLocationToContact(
          bool? shareLocationToContact, _i12.Contact? contact) =>
      (super.noSuchMethod(
          Invocation.method(
              #setShareLocationToContact, [shareLocationToContact, contact]),
          returnValue: _i10.Future<void>.value(),
          returnValueForMissingStub:
              _i10.Future<void>.value()) as _i10.Future<void>);
}

/// A class which mocks [HomeState].
///
/// See the documentation for Mockito's code generation for more information.
class MockHomeState extends _i1.Mock implements _i13.HomeState {
  MockHomeState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set selectedContact(_i12.Contact? value) =>
      super.noSuchMethod(Invocation.setter(#selectedContact, value),
          returnValueForMissingStub: null);
  @override
  String get navigationSourceContactProfile =>
      (super.noSuchMethod(Invocation.getter(#navigationSourceContactProfile),
          returnValue: '') as String);
  @override
  set navigationSourceContactProfile(String? _navigationSourceContactProfile) =>
      super.noSuchMethod(
          Invocation.setter(
              #navigationSourceContactProfile, _navigationSourceContactProfile),
          returnValueForMissingStub: null);
  @override
  _i3.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_1(this, Invocation.getter(#context)))
          as _i3.ReactiveContext);
  @override
  void setSelectedContact(_i12.Contact? newContact, String? navigationSource) =>
      super.noSuchMethod(
          Invocation.method(
              #setSelectedContact, [newContact, navigationSource]),
          returnValueForMissingStub: null);
}

/// A class which mocks [HttpProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpProvider extends _i1.Mock implements _i4.HttpProvider {
  MockHttpProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Client get client => (super.noSuchMethod(Invocation.getter(#client),
          returnValue: _FakeClient_4(this, Invocation.getter(#client)))
      as _i6.Client);
  @override
  String get baseUrl =>
      (super.noSuchMethod(Invocation.getter(#baseUrl), returnValue: '')
          as String);
  @override
  set baseUrl(String? _baseUrl) =>
      super.noSuchMethod(Invocation.setter(#baseUrl, _baseUrl),
          returnValueForMissingStub: null);
  @override
  _i10.Future<Map<String, String>> getHeaders() =>
      (super.noSuchMethod(Invocation.method(#getHeaders, []),
              returnValue:
                  _i10.Future<Map<String, String>>.value(<String, String>{}))
          as _i10.Future<Map<String, String>>);
  @override
  _i10.Future<Map<String, dynamic>> sendGetRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendGetRequest, [subPath]),
              returnValue:
                  _i10.Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i10.Future<Map<String, dynamic>>);
  @override
  _i10.Future<_i6.Response> sendPostRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPostRequest, [subPath, body]),
              returnValue: _i10.Future<_i6.Response>.value(_FakeResponse_5(
                  this, Invocation.method(#sendPostRequest, [subPath, body]))))
          as _i10.Future<_i6.Response>);
  @override
  _i10.Future<_i6.StreamedResponse> sendPostImageRequest(
          String? subPath, String? filePath, String? type) =>
      (super.noSuchMethod(
              Invocation.method(#sendPostImageRequest, [subPath, filePath, type]),
              returnValue: _i10.Future<_i6.StreamedResponse>.value(
                  _FakeStreamedResponse_6(
                      this,
                      Invocation.method(
                          #sendPostImageRequest, [subPath, filePath, type]))))
          as _i10.Future<_i6.StreamedResponse>);
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
