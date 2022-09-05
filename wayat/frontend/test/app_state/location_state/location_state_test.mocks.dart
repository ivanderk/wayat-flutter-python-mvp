// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/app_state/location_state/location_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;

import 'package:google_maps_flutter/google_maps_flutter.dart' as _i15;
import 'package:http/http.dart' as _i3;
import 'package:location/location.dart' as _i2;
import 'package:mobx/mobx.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/location_state/share_mode.dart' as _i8;
import 'package:wayat/app_state/user_session/session_state.dart' as _i12;
import 'package:wayat/app_state/user_status/user_status_state.dart' as _i10;
import 'package:wayat/domain/location/contact_location.dart' as _i11;
import 'package:wayat/domain/user/my_user.dart' as _i13;
import 'package:wayat/services/authentication/auth_service.dart' as _i6;
import 'package:wayat/services/location/share_location_service.dart' as _i7;
import 'package:wayat/services/location/share_location_service_factory.dart'
    as _i14;
import 'package:wayat/services/status/user_status_service_impl.dart' as _i4;

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

class _FakeLocationData_0 extends _i1.SmartFake implements _i2.LocationData {
  _FakeLocationData_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeResponse_1 extends _i1.SmartFake implements _i3.Response {
  _FakeResponse_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeStreamedResponse_2 extends _i1.SmartFake
    implements _i3.StreamedResponse {
  _FakeStreamedResponse_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeUserStatusService_3 extends _i1.SmartFake
    implements _i4.UserStatusService {
  _FakeUserStatusService_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_4 extends _i1.SmartFake
    implements _i5.ReactiveContext {
  _FakeReactiveContext_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAuthService_5 extends _i1.SmartFake implements _i6.AuthService {
  _FakeAuthService_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeShareLocationService_6 extends _i1.SmartFake
    implements _i7.ShareLocationService {
  _FakeShareLocationService_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [ShareLocationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockShareLocationService extends _i1.Mock
    implements _i7.ShareLocationService {
  MockShareLocationService() {
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
  void sendLocationToBack(_i2.LocationData? locationData) =>
      super.noSuchMethod(Invocation.method(#sendLocationToBack, [locationData]),
          returnValueForMissingStub: null);
  @override
  _i2.LocationData getCurrentLocation() =>
      (super.noSuchMethod(Invocation.method(#getCurrentLocation, []),
              returnValue: _FakeLocationData_0(
                  this, Invocation.method(#getCurrentLocation, [])))
          as _i2.LocationData);
  @override
  void setShareLocationMode(_i8.ShareLocationMode? shareLocationMode) =>
      super.noSuchMethod(
          Invocation.method(#setShareLocationMode, [shareLocationMode]),
          returnValueForMissingStub: null);
  @override
  void setShareLocationEnabled(bool? shareLocation) => super.noSuchMethod(
      Invocation.method(#setShareLocationEnabled, [shareLocation]),
      returnValueForMissingStub: null);
  @override
  _i9.Future<Map<String, dynamic>> sendGetRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendGetRequest, [subPath]),
              returnValue:
                  _i9.Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i9.Future<Map<String, dynamic>>);
  @override
  _i9.Future<_i3.Response> sendPostRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPostRequest, [subPath, body]),
              returnValue: _i9.Future<_i3.Response>.value(_FakeResponse_1(
                  this, Invocation.method(#sendPostRequest, [subPath, body]))))
          as _i9.Future<_i3.Response>);
  @override
  _i9.Future<_i3.StreamedResponse> sendPostImageRequest(
          String? subPath, String? filePath, String? type) =>
      (super.noSuchMethod(
          Invocation.method(#sendPostImageRequest, [subPath, filePath, type]),
          returnValue: _i9.Future<_i3.StreamedResponse>.value(
              _FakeStreamedResponse_2(
                  this,
                  Invocation.method(
                      #sendPostImageRequest, [subPath, filePath, type])))) as _i9
          .Future<_i3.StreamedResponse>);
  @override
  _i9.Future<bool> sendPutRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPutRequest, [subPath, body]),
          returnValue: _i9.Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<bool> sendDelRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendDelRequest, [subPath]),
          returnValue: _i9.Future<bool>.value(false)) as _i9.Future<bool>);
}

/// A class which mocks [UserStatusState].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserStatusState extends _i1.Mock implements _i10.UserStatusState {
  MockUserStatusState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.UserStatusService get userStatusService =>
      (super.noSuchMethod(Invocation.getter(#userStatusService),
              returnValue: _FakeUserStatusService_3(
                  this, Invocation.getter(#userStatusService)))
          as _i4.UserStatusService);
  @override
  List<_i11.ContactLocation> get contacts =>
      (super.noSuchMethod(Invocation.getter(#contacts),
          returnValue: <_i11.ContactLocation>[]) as List<_i11.ContactLocation>);
  @override
  set contacts(List<_i11.ContactLocation>? value) =>
      super.noSuchMethod(Invocation.setter(#contacts, value),
          returnValueForMissingStub: null);
  @override
  _i8.ShareLocationMode get locationMode =>
      (super.noSuchMethod(Invocation.getter(#locationMode),
          returnValue: _i8.ShareLocationMode.active) as _i8.ShareLocationMode);
  @override
  set locationMode(_i8.ShareLocationMode? value) =>
      super.noSuchMethod(Invocation.setter(#locationMode, value),
          returnValueForMissingStub: null);
  @override
  dynamic Function(List<_i11.ContactLocation>)
      get onContactsRefUpdateCallback =>
          (super.noSuchMethod(Invocation.getter(#onContactsRefUpdateCallback),
                  returnValue: (List<_i11.ContactLocation> __p0) => null)
              as dynamic Function(List<_i11.ContactLocation>));
  @override
  set onContactsRefUpdateCallback(
          dynamic Function(List<_i11.ContactLocation>)?
              _onContactsRefUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onContactsRefUpdateCallback, _onContactsRefUpdateCallback),
          returnValueForMissingStub: null);
  @override
  dynamic Function(_i8.ShareLocationMode) get onLocationModeUpdateCallback =>
      (super.noSuchMethod(Invocation.getter(#onLocationModeUpdateCallback),
              returnValue: (_i8.ShareLocationMode __p0) => null)
          as dynamic Function(_i8.ShareLocationMode));
  @override
  set onLocationModeUpdateCallback(
          dynamic Function(_i8.ShareLocationMode)?
              _onLocationModeUpdateCallback) =>
      super.noSuchMethod(
          Invocation.setter(
              #onLocationModeUpdateCallback, _onLocationModeUpdateCallback),
          returnValueForMissingStub: null);
  @override
  _i5.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i5.ReactiveContext);
  @override
  _i9.Future<dynamic> initializeListener() =>
      (super.noSuchMethod(Invocation.method(#initializeListener, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  void setContactList(List<_i11.ContactLocation>? newContacts) =>
      super.noSuchMethod(Invocation.method(#setContactList, [newContacts]),
          returnValueForMissingStub: null);
  @override
  void setLocationMode(_i8.ShareLocationMode? newMode) =>
      super.noSuchMethod(Invocation.method(#setLocationMode, [newMode]),
          returnValueForMissingStub: null);
}

/// A class which mocks [SessionState].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionState extends _i1.Mock implements _i12.SessionState {
  MockSessionState() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get finishLoggedIn => (super
          .noSuchMethod(Invocation.getter(#finishLoggedIn), returnValue: false)
      as bool);
  @override
  set finishLoggedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#finishLoggedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get googleSignedIn => (super
          .noSuchMethod(Invocation.getter(#googleSignedIn), returnValue: false)
      as bool);
  @override
  set googleSignedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#googleSignedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get hasDoneOnboarding =>
      (super.noSuchMethod(Invocation.getter(#hasDoneOnboarding),
          returnValue: false) as bool);
  @override
  set hasDoneOnboarding(bool? value) =>
      super.noSuchMethod(Invocation.setter(#hasDoneOnboarding, value),
          returnValueForMissingStub: null);
  @override
  set currentUser(_i13.MyUser? value) =>
      super.noSuchMethod(Invocation.setter(#currentUser, value),
          returnValueForMissingStub: null);
  @override
  _i6.AuthService get authService =>
      (super.noSuchMethod(Invocation.getter(#authService),
              returnValue:
                  _FakeAuthService_5(this, Invocation.getter(#authService)))
          as _i6.AuthService);
  @override
  _i5.ReactiveContext get context =>
      (super.noSuchMethod(Invocation.getter(#context),
              returnValue:
                  _FakeReactiveContext_4(this, Invocation.getter(#context)))
          as _i5.ReactiveContext);
  @override
  _i9.Future<void> doneOnBoarding() => (super.noSuchMethod(
      Invocation.method(#doneOnBoarding, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<dynamic> isLogged() =>
      (super.noSuchMethod(Invocation.method(#isLogged, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  void setGoogleSignIn(bool? signedIn) =>
      super.noSuchMethod(Invocation.method(#setGoogleSignIn, [signedIn]),
          returnValueForMissingStub: null);
  @override
  void setFinishLoggedIn(bool? finishedLoggedIn) => super.noSuchMethod(
      Invocation.method(#setFinishLoggedIn, [finishedLoggedIn]),
      returnValueForMissingStub: null);
  @override
  _i9.Future<dynamic> initializeUser() =>
      (super.noSuchMethod(Invocation.method(#initializeUser, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i9.Future<dynamic> updateCurrentUser() =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUser, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i9.Future<bool> updatePhone(String? phone) =>
      (super.noSuchMethod(Invocation.method(#updatePhone, [phone]),
          returnValue: _i9.Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<bool> updateOnboarding() =>
      (super.noSuchMethod(Invocation.method(#updateOnboarding, []),
          returnValue: _i9.Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<dynamic> doLoginProcess() =>
      (super.noSuchMethod(Invocation.method(#doLoginProcess, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i9.Future<dynamic> initializeUserSession() =>
      (super.noSuchMethod(Invocation.method(#initializeUserSession, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i9.Future<void> login() => (super.noSuchMethod(Invocation.method(#login, []),
      returnValue: _i9.Future<void>.value(),
      returnValueForMissingStub: _i9.Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<dynamic> logOut() =>
      (super.noSuchMethod(Invocation.method(#logOut, []),
          returnValue: _i9.Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  bool isOnboardingCompleted() =>
      (super.noSuchMethod(Invocation.method(#isOnboardingCompleted, []),
          returnValue: false) as bool);
  @override
  bool hasPhone() =>
      (super.noSuchMethod(Invocation.method(#hasPhone, []), returnValue: false)
          as bool);
}

/// A class which mocks [ShareLocationServiceFactory].
///
/// See the documentation for Mockito's code generation for more information.
class MockShareLocationServiceFactory extends _i1.Mock
    implements _i14.ShareLocationServiceFactory {
  MockShareLocationServiceFactory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i7.ShareLocationService> create(
          {_i8.ShareLocationMode? shareLocationMode,
          bool? shareLocationEnabled,
          dynamic Function(_i15.LatLng)? onLocationChanged}) =>
      (super.noSuchMethod(
          Invocation.method(#create, [], {
            #shareLocationMode: shareLocationMode,
            #shareLocationEnabled: shareLocationEnabled,
            #onLocationChanged: onLocationChanged
          }),
          returnValue: _i9.Future<_i7.ShareLocationService>.value(
              _FakeShareLocationService_6(
                  this,
                  Invocation.method(#create, [], {
                    #shareLocationMode: shareLocationMode,
                    #shareLocationEnabled: shareLocationEnabled,
                    #onLocationChanged: onLocationChanged
                  })))) as _i9.Future<_i7.ShareLocationService>);
}