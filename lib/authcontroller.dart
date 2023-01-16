import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final auth = FirebaseAuth.instance;
  var verificationId = ''.obs;

  Future<void> phoneAuth(String phone) async {
    await auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (credentials) async {
          await auth.signInWithCredential(credentials);
        },
        verificationFailed: (error) {
          if (error.code == "invalid-phone-number") {
            Get.snackbar('Error', 'phone number not valid');
          } else {
            Get.snackbar('Error', 'Something went wrong');
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        });

  }


  Future<bool> verifyOtp(String otp) async {
    var cred = await auth.signInWithCredential(PhoneAuthProvider.credential(
        verificationId: verificationId.value, smsCode: otp));
    return cred.user != null ? true : false;
  }
}