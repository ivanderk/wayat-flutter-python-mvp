// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/app_state/user_session/session_state_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:http/http.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/domain/user/my_user.dart' as _i2;
import 'package:wayat/services/authentication/auth_service.dart' as _i5;

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

class _FakeMyUser_0 extends _i1.SmartFake implements _i2.MyUser {
  _FakeMyUser_0(Object parent, Invocation parentInvocation)
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

class _FakeGoogleSignInAuthentication_3 extends _i1.SmartFake
    implements _i4.GoogleSignInAuthentication {
  _FakeGoogleSignInAuthentication_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [AuthService].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthService extends _i1.Mock implements _i5.AuthService {
  MockAuthService() {
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
  _i6.Future<_i4.GoogleSignInAccount?> signIn() =>
      (super.noSuchMethod(Invocation.method(#signIn, []),
              returnValue: _i6.Future<_i4.GoogleSignInAccount?>.value())
          as _i6.Future<_i4.GoogleSignInAccount?>);
  @override
  _i6.Future<String> getIdToken() =>
      (super.noSuchMethod(Invocation.method(#getIdToken, []),
          returnValue: _i6.Future<String>.value('')) as _i6.Future<String>);
  @override
  _i6.Future<void> signOut() => (super.noSuchMethod(
      Invocation.method(#signOut, []),
      returnValue: _i6.Future<void>.value(),
      returnValueForMissingStub: _i6.Future<void>.value()) as _i6.Future<void>);
  @override
  _i6.Future<_i2.MyUser> getUserData() =>
      (super.noSuchMethod(Invocation.method(#getUserData, []),
              returnValue: _i6.Future<_i2.MyUser>.value(
                  _FakeMyUser_0(this, Invocation.method(#getUserData, []))))
          as _i6.Future<_i2.MyUser>);
  @override
  _i6.Future<_i4.GoogleSignInAccount?> signInSilently() =>
      (super.noSuchMethod(Invocation.method(#signInSilently, []),
              returnValue: _i6.Future<_i4.GoogleSignInAccount?>.value())
          as _i6.Future<_i4.GoogleSignInAccount?>);
  @override
  _i6.Future<bool> sendPhoneNumber(String? phone) =>
      (super.noSuchMethod(Invocation.method(#sendPhoneNumber, [phone]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<bool> sendDoneOnboarding(bool? doneOnboarding) => (super
      .noSuchMethod(Invocation.method(#sendDoneOnboarding, [doneOnboarding]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<Map<String, dynamic>> sendGetRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendGetRequest, [subPath]),
              returnValue:
                  _i6.Future<Map<String, dynamic>>.value(<String, dynamic>{}))
          as _i6.Future<Map<String, dynamic>>);
  @override
  _i6.Future<_i3.Response> sendPostRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPostRequest, [subPath, body]),
              returnValue: _i6.Future<_i3.Response>.value(_FakeResponse_1(
                  this, Invocation.method(#sendPostRequest, [subPath, body]))))
          as _i6.Future<_i3.Response>);
  @override
  _i6.Future<_i3.StreamedResponse> sendPostImageRequest(
          String? subPath, String? filePath, String? type) =>
      (super.noSuchMethod(
          Invocation.method(#sendPostImageRequest, [subPath, filePath, type]),
          returnValue: _i6.Future<_i3.StreamedResponse>.value(
              _FakeStreamedResponse_2(
                  this,
                  Invocation.method(
                      #sendPostImageRequest, [subPath, filePath, type])))) as _i6
          .Future<_i3.StreamedResponse>);
  @override
  _i6.Future<bool> sendPutRequest(
          String? subPath, Map<String, dynamic>? body) =>
      (super.noSuchMethod(Invocation.method(#sendPutRequest, [subPath, body]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
  @override
  _i6.Future<bool> sendDelRequest(String? subPath) =>
      (super.noSuchMethod(Invocation.method(#sendDelRequest, [subPath]),
          returnValue: _i6.Future<bool>.value(false)) as _i6.Future<bool>);
}

/// A class which mocks [GoogleSignInAccount].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockGoogleSignInAccount extends _i1.Mock
    implements _i4.GoogleSignInAccount {
  MockGoogleSignInAccount() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get email =>
      (super.noSuchMethod(Invocation.getter(#email), returnValue: '')
          as String);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i6.Future<_i4.GoogleSignInAuthentication> get authentication =>
      (super.noSuchMethod(Invocation.getter(#authentication),
              returnValue: _i6.Future<_i4.GoogleSignInAuthentication>.value(
                  _FakeGoogleSignInAuthentication_3(
                      this, Invocation.getter(#authentication))))
          as _i6.Future<_i4.GoogleSignInAuthentication>);
  @override
  _i6.Future<Map<String, String>> get authHeaders =>
      (super.noSuchMethod(Invocation.getter(#authHeaders),
              returnValue:
                  _i6.Future<Map<String, String>>.value(<String, String>{}))
          as _i6.Future<Map<String, String>>);
  @override
  _i6.Future<void> clearAuthCache() => (super.noSuchMethod(
      Invocation.method(#clearAuthCache, []),
      returnValue: _i6.Future<void>.value(),
      returnValueForMissingStub: _i6.Future<void>.value()) as _i6.Future<void>);
}