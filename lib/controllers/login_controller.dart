import 'package:firebase_auth/firebase_auth.dart';
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
  final FirebaseAuth auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    ctrUsername = TextEditingController();
    ctrPassword = TextEditingController();
    // _googleSignIn.onCurrentUserChanged.listen((account) {
    //   currentUser.value = account;
    //   if (account != null) {
    //     // Navigate to the home page if a user is logged in
    //     Get.off(() => bottomNavbar());
    //   }
    // });
    // _googleSignIn.signInSilently();
  }

  void togglePasswordVisibility() {
    isObsecure.value = !isObsecure.value;
  }
  Future<void> handleSignIn(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      try {
        // Sign in with Google credentials
        UserCredential result = await FirebaseAuth.instance.signInWithCredential(authCredential);
        User? user = result.user;

        if (result != null) {
          // Navigate to the home page or any other page you want after successful login
          Get.to(bottomNavbar());
        }
      } catch (error) {
        // Handle the sign-in error
        print("Error signing in with Google: $error");
      }
    }
    }
  }
  //
  // final GoogleSignIn _googleSignIn = GoogleSignIn(
  //   scopes: [
  //     'email',
  //     'https://www.googleapis.com/auth/contacts.readonly',
  //   ],
  // );
  //
  // final Rx<GoogleSignInAccount?> currentUser = Rx<GoogleSignInAccount?>(null);
  //
  // Future<void> handleSignIn() async {
  //   try {
  //     await _googleSignIn.signIn();
  //   } catch (error) {
  //     if (kDebugMode) {
  //       print(error);
  //     }
  //   }
  // }
  //
  // Future<void> handleSignOut() async {
  //   await _googleSignIn.disconnect();
  // }


