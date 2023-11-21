import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:readiverse_app/global/components/bottom_navbar.dart';
import 'package:readiverse_app/pages/login_page.dart';
import 'package:readiverse_app/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Readiverse',

      home: LoginPage(),
    );
  }
}
