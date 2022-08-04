import 'package:firebase_auth/firebase_auth.dart';
import 'package:wayat/services/authentication/phone_service.dart';

class GooglePhoneService extends PhoneService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _verificationId = "";
  
  /// Wait for the user to complete the recaptcha and for an SMS code to be sent.\
  /// **This method updates the ```verificationId```.** 
  /// #### Usage:
  /// ```
  /// AuthService auth = GoogleAuthService();
  /// /* Google sign in process, then: */
  /// await auth.sendSMSCode('+34612345678');
  /// ```
  /// #### Verify with: 
  /// ```
  /// await auth.verifySMSCode('123456');
  /// ``
  @override
  Future<void> sendSMSCode(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: _onVerificationCompleted,
        verificationFailed: _onVerificationFailed,
        codeSent: _onCodeSent,
        codeAutoRetrievalTimeout: _onCodeTimeout);
  }

  /// Verify the SMS code sent to the user, it should be called after
  /// the cade has been sent
  @override
  Future<bool> verifySMSCode(String smsCode) async {
    // Create a PhoneAuthCredential with the code
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: _verificationId, smsCode: smsCode);

    // Sign the user in (or link) with the credential
    try{
      await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      if(e.code == 'invalid-verification-code'){
        return false;
      }
      rethrow;
    }
    return true;
  }

  void _onVerificationCompleted(PhoneAuthCredential authCredential) async {}

  void _onVerificationFailed(FirebaseAuthException exception) {
    // Posible code exception: 'invalid-phone-number'
    throw exception;
  }

  void _onCodeSent(String verificationId, int? forceResendingToken) {
    _verificationId = verificationId;
  }

  void _onCodeTimeout(String timeout) {
    // TODO on code timeout it should open a dialog and resend an sms codes
  }
}