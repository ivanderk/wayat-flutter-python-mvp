import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';
import 'package:wayat/app_state/lifecycle_state/lifecycle_state.dart';
import 'package:wayat/domain/user/my_user.dart';
import 'package:wayat/services/authentication/auth_service.dart';
import 'package:wayat/services/authentication/gauth_service_impl.dart';
part 'user_state.g.dart';

/// Manages all the states for the authenticated user related
/// functionality.
///
/// Also, it wraps the authentication service.
// ignore: library_private_types_in_public_api
class UserState = _UserState with _$UserState;

abstract class _UserState with Store {
  GoogleSignInAccount? googleAccount;

  /// Whether or not the authentication process has been completed.
  ///
  /// Useful for **auto_route**.
  @computed
  bool get finishLoggedIn =>
      (currentUser == null) ? false : currentUser!.phone.isNotEmpty;

  /// Wheter or not the user has finished the onboarding process.
  ///
  /// Useful for **auto_route**.
  @computed
  bool get hasDoneOnboarding =>
      (currentUser == null) ? false : currentUser!.onboardingCompleted;

  /// Instance of the authenticated user in the app.
  ///
  /// It will be `null` if there is no authenticated user.
  @observable
  MyUser? currentUser;

  /// Authentication service, useful for signing in an user
  /// (this includes signing silently), signing out an user and
  /// fetching authenticated user data, setting authenticated user data.
  final AuthService authService;

  /// App state for the user session related functionality.
  ///
  /// If no [authService] is provided, a [GoogleAuthService]
  /// will be instantiated.
  _UserState({AuthService? authService})
      : authService = authService ?? GoogleAuthService();

  /// Shows the graphical interface to login an user and
  /// proceeds with the login process.
  Future<void> login() async {
    googleAccount = await authService.signIn();
    // googleAccount will be null if the user cancels the google authentication
    if (googleAccount != null) {
      initializeCurrentUser();
    }
  }

  /// Log out process. This includes closing the map,
  /// undoing changes in the login state and calling the
  /// [authService] [signOut].
  Future logOut() async {
    final LifeCycleState lifeCycleState = GetIt.I.get<LifeCycleState>();
    await lifeCycleState.notifyAppClosed();

    await authService.signOut();
    currentUser = null;
  }

  /// Checks if login process can be done without a
  /// graphical interface.
  ///
  /// If this functions ends and
  /// or [googleAccount] remains `null`, it means the user
  /// could not be authenticated silently.
  Future<bool> isLogged() async {
    if (currentUser != null) return true;
    googleAccount = await authService.signInSilently();
    return googleAccount != null;
  }

  @action
  Future<void> initializeCurrentUser() async {
    currentUser ??= await authService.getUserData();
  }

  // TODO When refactor profileState, remove method (not included in test)
  /// Fetches and overrides all authenticated user data.
  @action
  Future updateCurrentUser() async {
    currentUser = await authService.getUserData();
  }

  /// Updates the [phone] of the authenticated user.
  ///
  /// Returns `true` if the `phone` has benn successfully
  /// updated.
  @action
  Future<bool> updatePhone(String phone) async {
    bool done = await authService.sendPhoneNumber(phone);
    if (done) currentUser!.phone = phone;
    return done;
  }
}