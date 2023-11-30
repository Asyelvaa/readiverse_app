import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfilePageController extends GetxController with GetTickerProviderStateMixin{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // tab bar
  late TabController tabController;

  @override
  void onInit() {

    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }
  signOut() async {
    await _firebaseAuth.signOut();
  }
}