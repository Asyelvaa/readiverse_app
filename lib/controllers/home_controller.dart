import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/pages/home_page.dart';
import 'package:readiverse_app/pages/profile_page.dart';
import 'package:readiverse_app/pages/search_page.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList <Widget> bottomNav = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
     currentIndex.value = 0;
  }
}