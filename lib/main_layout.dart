import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/home_controller.dart';
import 'package:readiverse_app/helpers/components/bottom_navbar.dart';
import 'package:readiverse_app/helpers/components/google_navbar.dart';
import 'package:readiverse_app/helpers/components/navigation_bar.dart';

class MainLayout extends StatelessWidget {
  // const MainLayout({super.key});
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
       Obx(() => homeController.bottomNav[homeController.currentIndex.value]),

      bottomNavigationBar: Navbar(),
    );
  }
}