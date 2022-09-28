// Mocks generated by Mockito 5.3.0 from annotations
// in wayat/test/services/status/user_status_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:typed_data' as _i8;

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart'
    as _i3;
import 'package:firebase_core/firebase_core.dart' as _i2;
import 'package:mobx/mobx.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:wayat/app_state/user_session/session_state.dart' as _i11;
import 'package:wayat/domain/contact/contact.dart' as _i10;
import 'package:wayat/domain/user/my_user.dart' as _i12;
import 'package:wayat/services/authentication/auth_service.dart' as _i5;
import 'package:wayat/services/contact/contact_service.dart' as _i9;

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

class _FakeFirebaseApp_0 extends _i1.SmartFake implements _i2.FirebaseApp {
  _FakeFirebaseApp_0(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeSettings_1 extends _i1.SmartFake implements _i3.Settings {
  _FakeSettings_1(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeCollectionReference_2<T extends Object?> extends _i1.SmartFake
    implements _i4.CollectionReference<T> {
  _FakeCollectionReference_2(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeWriteBatch_3 extends _i1.SmartFake implements _i4.WriteBatch {
  _FakeWriteBatch_3(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeLoadBundleTask_4 extends _i1.SmartFake
    implements _i4.LoadBundleTask {
  _FakeLoadBundleTask_4(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuerySnapshot_5<T extends Object?> extends _i1.SmartFake
    implements _i4.QuerySnapshot<T> {
  _FakeQuerySnapshot_5(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeQuery_6<T extends Object?> extends _i1.SmartFake
    implements _i4.Query<T> {
  _FakeQuery_6(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeDocumentReference_7<T extends Object?> extends _i1.SmartFake
    implements _i4.DocumentReference<T> {
  _FakeDocumentReference_7(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeAuthService_8 extends _i1.SmartFake implements _i5.AuthService {
  _FakeAuthService_8(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

class _FakeReactiveContext_9 extends _i1.SmartFake
    implements _i6.ReactiveContext {
  _FakeReactiveContext_9(Object parent, Invocation parentInvocation)
      : super(parent, parentInvocation);
}

/// A class which mocks [FirebaseFirestore].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseFirestore extends _i1.Mock implements _i4.FirebaseFirestore {
  @override
  _i2.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
          returnValue: _FakeFirebaseApp_0(this, Invocation.getter(#app)),
          returnValueForMissingStub:
              _FakeFirebaseApp_0(this, Invocation.getter(#app)))
      as _i2.FirebaseApp);
  @override
  set app(_i2.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set settings(_i3.Settings? settings) =>
      super.noSuchMethod(Invocation.setter(#settings, settings),
          returnValueForMissingStub: null);
  @override
  _i3.Settings get settings => (super.noSuchMethod(Invocation.getter(#settings),
      returnValue: _FakeSettings_1(this, Invocation.getter(#settings)),
      returnValueForMissingStub:
          _FakeSettings_1(this, Invocation.getter(#settings))) as _i3.Settings);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
              returnValue: <dynamic, dynamic>{},
              returnValueForMissingStub: <dynamic, dynamic>{})
          as Map<dynamic, dynamic>);
  @override
  _i4.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_2<Map<String, dynamic>>(
                  this, Invocation.method(#collection, [collectionPath])),
              returnValueForMissingStub:
                  _FakeCollectionReference_2<Map<String, dynamic>>(
                      this, Invocation.method(#collection, [collectionPath])))
          as _i4.CollectionReference<Map<String, dynamic>>);
  @override
  _i4.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
          returnValue: _FakeWriteBatch_3(this, Invocation.method(#batch, [])),
          returnValueForMissingStub:
              _FakeWriteBatch_3(this, Invocation.method(#batch, [])))
      as _i4.WriteBatch);
  @override
  _i7.Future<void> clearPersistence() => (super.noSuchMethod(
      Invocation.method(#clearPersistence, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> enablePersistence(
          [_i3.PersistenceSettings? persistenceSettings]) =>
      (super.noSuchMethod(
              Invocation.method(#enablePersistence, [persistenceSettings]),
              returnValue: _i7.Future<void>.value(),
              returnValueForMissingStub: _i7.Future<void>.value())
          as _i7.Future<void>);
  @override
  _i4.LoadBundleTask loadBundle(_i8.Uint8List? bundle) => (super.noSuchMethod(
      Invocation.method(#loadBundle, [bundle]),
      returnValue:
          _FakeLoadBundleTask_4(this, Invocation.method(#loadBundle, [bundle])),
      returnValueForMissingStub: _FakeLoadBundleTask_4(
          this, Invocation.method(#loadBundle, [bundle]))) as _i4
      .LoadBundleTask);
  @override
  void useFirestoreEmulator(String? host, int? port,
          {bool? sslEnabled = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #useFirestoreEmulator, [host, port], {#sslEnabled: sslEnabled}),
          returnValueForMissingStub: null);
  @override
  _i7.Future<_i4.QuerySnapshot<Map<String, dynamic>>> namedQueryGet(String? name,
          {_i3.GetOptions? options = const _i3.GetOptions()}) =>
      (super.noSuchMethod(Invocation.method(#namedQueryGet, [name], {#options: options}),
              returnValue: _i7.Future<_i4.QuerySnapshot<Map<String, dynamic>>>.value(_FakeQuerySnapshot_5<Map<String, dynamic>>(
                  this,
                  Invocation.method(#namedQueryGet, [name], {#options: options}))),
              returnValueForMissingStub:
                  _i7.Future<_i4.QuerySnapshot<Map<String, dynamic>>>.value(
                      _FakeQuerySnapshot_5<Map<String, dynamic>>(this, Invocation.method(#namedQueryGet, [name], {#options: options}))))
          as _i7.Future<_i4.QuerySnapshot<Map<String, dynamic>>>);
  @override
  _i4.Query<Map<String, dynamic>> collectionGroup(String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collectionGroup, [collectionPath]),
              returnValue: _FakeQuery_6<Map<String, dynamic>>(
                  this, Invocation.method(#collectionGroup, [collectionPath])),
              returnValueForMissingStub: _FakeQuery_6<Map<String, dynamic>>(
                  this, Invocation.method(#collectionGroup, [collectionPath])))
          as _i4.Query<Map<String, dynamic>>);
  @override
  _i7.Future<void> disableNetwork() => (super.noSuchMethod(
      Invocation.method(#disableNetwork, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i4.DocumentReference<Map<String, dynamic>> doc(String? documentPath) =>
      (super.noSuchMethod(Invocation.method(#doc, [documentPath]),
              returnValue: _FakeDocumentReference_7<Map<String, dynamic>>(
                  this, Invocation.method(#doc, [documentPath])),
              returnValueForMissingStub:
                  _FakeDocumentReference_7<Map<String, dynamic>>(
                      this, Invocation.method(#doc, [documentPath])))
          as _i4.DocumentReference<Map<String, dynamic>>);
  @override
  _i7.Future<void> enableNetwork() => (super.noSuchMethod(
      Invocation.method(#enableNetwork, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Stream<void> snapshotsInSync() => (super.noSuchMethod(
      Invocation.method(#snapshotsInSync, []),
      returnValue: _i7.Stream<void>.empty(),
      returnValueForMissingStub: _i7.Stream<void>.empty()) as _i7.Stream<void>);
  @override
  _i7.Future<T> runTransaction<T>(_i4.TransactionHandler<T>? transactionHandler,
          {Duration? timeout = const Duration(seconds: 30),
          int? maxAttempts = 5}) =>
      (super.noSuchMethod(
              Invocation.method(#runTransaction, [transactionHandler],
                  {#timeout: timeout, #maxAttempts: maxAttempts}),
              returnValue: _i7.Future<T>.value(null),
              returnValueForMissingStub: _i7.Future<T>.value(null))
          as _i7.Future<T>);
  @override
  _i7.Future<void> terminate() => (super.noSuchMethod(
      Invocation.method(#terminate, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> waitForPendingWrites() => (super.noSuchMethod(
      Invocation.method(#waitForPendingWrites, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
}

/// A class which mocks [ContactService].
///
/// See the documentation for Mockito's code generation for more information.
class MockContactService extends _i1.Mock implements _i9.ContactService {
  @override
  _i7.Future<List<_i10.Contact>> getAll() => (super.noSuchMethod(
          Invocation.method(#getAll, []),
          returnValue: _i7.Future<List<_i10.Contact>>.value(<_i10.Contact>[]),
          returnValueForMissingStub:
              _i7.Future<List<_i10.Contact>>.value(<_i10.Contact>[]))
      as _i7.Future<List<_i10.Contact>>);
  @override
  _i7.Future<void> sendRequests(List<_i10.Contact>? contacts) =>
      (super.noSuchMethod(Invocation.method(#sendRequests, [contacts]),
              returnValue: _i7.Future<void>.value(),
              returnValueForMissingStub: _i7.Future<void>.value())
          as _i7.Future<void>);
  @override
  _i7.Future<List<_i10.Contact>> getFilteredContacts(
          List<String>? importedContacts) =>
      (super.noSuchMethod(
          Invocation.method(#getFilteredContacts, [importedContacts]),
          returnValue: _i7.Future<List<_i10.Contact>>.value(<_i10.Contact>[]),
          returnValueForMissingStub:
              _i7.Future<List<_i10.Contact>>.value(<_i10.Contact>[])) as _i7
          .Future<List<_i10.Contact>>);
  @override
  _i7.Future<bool> removeContact(_i10.Contact? contact) =>
      (super.noSuchMethod(Invocation.method(#removeContact, [contact]),
              returnValue: _i7.Future<bool>.value(false),
              returnValueForMissingStub: _i7.Future<bool>.value(false))
          as _i7.Future<bool>);
}

/// A class which mocks [SessionState].
///
/// See the documentation for Mockito's code generation for more information.
class MockSessionState extends _i1.Mock implements _i11.SessionState {
  @override
  bool get finishLoggedIn =>
      (super.noSuchMethod(Invocation.getter(#finishLoggedIn),
          returnValue: false, returnValueForMissingStub: false) as bool);
  @override
  set finishLoggedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#finishLoggedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get googleSignedIn =>
      (super.noSuchMethod(Invocation.getter(#googleSignedIn),
          returnValue: false, returnValueForMissingStub: false) as bool);
  @override
  set googleSignedIn(bool? value) =>
      super.noSuchMethod(Invocation.setter(#googleSignedIn, value),
          returnValueForMissingStub: null);
  @override
  bool get hasDoneOnboarding =>
      (super.noSuchMethod(Invocation.getter(#hasDoneOnboarding),
          returnValue: false, returnValueForMissingStub: false) as bool);
  @override
  set hasDoneOnboarding(bool? value) =>
      super.noSuchMethod(Invocation.setter(#hasDoneOnboarding, value),
          returnValueForMissingStub: null);
  @override
  set currentUser(_i12.MyUser? value) =>
      super.noSuchMethod(Invocation.setter(#currentUser, value),
          returnValueForMissingStub: null);
  @override
  _i5.AuthService get authService => (super.noSuchMethod(
      Invocation.getter(#authService),
      returnValue: _FakeAuthService_8(this, Invocation.getter(#authService)),
      returnValueForMissingStub: _FakeAuthService_8(
          this, Invocation.getter(#authService))) as _i5.AuthService);
  @override
  _i6.ReactiveContext get context => (super.noSuchMethod(
      Invocation.getter(#context),
      returnValue: _FakeReactiveContext_9(this, Invocation.getter(#context)),
      returnValueForMissingStub: _FakeReactiveContext_9(
          this, Invocation.getter(#context))) as _i6.ReactiveContext);
  @override
  _i7.Future<void> doneOnBoarding() => (super.noSuchMethod(
      Invocation.method(#doneOnBoarding, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<void> isLogged() => (super.noSuchMethod(
      Invocation.method(#isLogged, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  void setGoogleSignIn(bool? signedIn) =>
      super.noSuchMethod(Invocation.method(#setGoogleSignIn, [signedIn]),
          returnValueForMissingStub: null);
  @override
  void setFinishLoggedIn(bool? finishedLoggedIn) => super.noSuchMethod(
      Invocation.method(#setFinishLoggedIn, [finishedLoggedIn]),
      returnValueForMissingStub: null);
  @override
  _i7.Future<dynamic> initializeUser() =>
      (super.noSuchMethod(Invocation.method(#initializeUser, []),
              returnValue: _i7.Future<dynamic>.value(),
              returnValueForMissingStub: _i7.Future<dynamic>.value())
          as _i7.Future<dynamic>);
  @override
  _i7.Future<dynamic> updateCurrentUser() =>
      (super.noSuchMethod(Invocation.method(#updateCurrentUser, []),
              returnValue: _i7.Future<dynamic>.value(),
              returnValueForMissingStub: _i7.Future<dynamic>.value())
          as _i7.Future<dynamic>);
  @override
  _i7.Future<bool> updatePhone(String? phone) =>
      (super.noSuchMethod(Invocation.method(#updatePhone, [phone]),
              returnValue: _i7.Future<bool>.value(false),
              returnValueForMissingStub: _i7.Future<bool>.value(false))
          as _i7.Future<bool>);
  @override
  _i7.Future<bool> setDoneOnBoarding() =>
      (super.noSuchMethod(Invocation.method(#setDoneOnBoarding, []),
              returnValue: _i7.Future<bool>.value(false),
              returnValueForMissingStub: _i7.Future<bool>.value(false))
          as _i7.Future<bool>);
  @override
  _i7.Future<dynamic> doLoginProcess() =>
      (super.noSuchMethod(Invocation.method(#doLoginProcess, []),
              returnValue: _i7.Future<dynamic>.value(),
              returnValueForMissingStub: _i7.Future<dynamic>.value())
          as _i7.Future<dynamic>);
  @override
  _i7.Future<dynamic> initializeUserSession() =>
      (super.noSuchMethod(Invocation.method(#initializeUserSession, []),
              returnValue: _i7.Future<dynamic>.value(),
              returnValueForMissingStub: _i7.Future<dynamic>.value())
          as _i7.Future<dynamic>);
  @override
  _i7.Future<void> login() => (super.noSuchMethod(Invocation.method(#login, []),
      returnValue: _i7.Future<void>.value(),
      returnValueForMissingStub: _i7.Future<void>.value()) as _i7.Future<void>);
  @override
  _i7.Future<dynamic> logOut() =>
      (super.noSuchMethod(Invocation.method(#logOut, []),
              returnValue: _i7.Future<dynamic>.value(),
              returnValueForMissingStub: _i7.Future<dynamic>.value())
          as _i7.Future<dynamic>);
  @override
  bool isOnboardingCompleted() =>
      (super.noSuchMethod(Invocation.method(#isOnboardingCompleted, []),
          returnValue: false, returnValueForMissingStub: false) as bool);
  @override
  bool hasPhone() => (super.noSuchMethod(Invocation.method(#hasPhone, []),
      returnValue: false, returnValueForMissingStub: false) as bool);
}