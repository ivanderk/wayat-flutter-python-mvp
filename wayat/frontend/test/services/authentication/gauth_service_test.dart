import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wayat/services/authentication/auth_service.dart';
import 'package:wayat/services/authentication/gauth_service_impl.dart';
import 'package:wayat/services/request/request_service.dart';
import 'package:wayat/services/request/request_service_impl.dart';
import 'package:wayat/services/authentication/mock/google_sign_in_mock.dart';

void main() {
  late GoogleSignIn googleSignIn;
  late GoogleAuthService googleAuthService;

  setUpAll(() {
    FlutterConfig.loadValueForTesting({
      'ANDROID_BASE_URL': 'http://localhost:8000',
      'BASE_URL': 'http://10.0.2.2:8000'
    });
    googleSignIn = CustomMockGoogleSignIn();
    googleAuthService = GoogleAuthService(gS: googleSignIn);
    GetIt.I.registerLazySingleton<AuthService>(
      () => GoogleAuthService(gS: googleSignIn));
    GetIt.I.registerLazySingleton<RequestService>(
      () => RequestServiceImpl());
  });

  test('Google Sign In Account is not null', () async {
    expect(await googleAuthService.signIn(), isNotNull, 
      reason: "GoogleSignInAccount after sign in can not be null");
  });

  test('Get id token is not empty after sign in', () async {
    expect(await googleAuthService.getIdToken(), isNotEmpty, 
      reason: "Id Token should not be an empty string after sign in");
  });
}