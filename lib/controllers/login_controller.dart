import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:readiverse_app/global/components/bottom_navbar.dart';
import 'package:readiverse_app/pages/home_page/home_page.dart';

class LoginController extends GetxController{
  late TextEditingController ctrUsername;
  late TextEditingController ctrPassword;
  final RxBool isObsecure = true.obs;


  @override
  void onInit() {
    super.onInit();
    ctrUsername = TextEditingController();
    ctrPassword = TextEditingController();
    _googleSignIn.onCurrentUserChanged.listen((account) {
      currentUser.value = account;
      if (account != null) {
        // Navigate to the home page if a user is logged in
        Get.off(() => bottomNavbar());
      }
    });
    _googleSignIn.signInSilently();
  }

  void togglePasswordVisibility() {
    isObsecure.value = !isObsecure.value;
  }

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  final Rx<GoogleSignInAccount?> currentUser = Rx<GoogleSignInAccount?>(null);

  Future<void> handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  Future<void> handleSignOut() async {
    await _googleSignIn.disconnect();
  }
}

