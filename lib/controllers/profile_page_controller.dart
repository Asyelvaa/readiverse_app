import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:readiverse_app/routes/app_routes.dart';


class ProfilePageController extends GetxController with GetTickerProviderStateMixin {
  User? user = FirebaseAuth.instance.currentUser;

  late TabController tabController;


  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      // Update the user property whenever the authentication state changes
      this.user = user;
    });
    super.onInit();
  }
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      await GoogleSignIn().signOut();
      Get.offAllNamed(Routes.LOGIN_PAGE); // Navigate back to the previous page or login page
    } catch (error) {
      print("Error during logout: $error");
      // Handle the error as needed
    }
  }
}
