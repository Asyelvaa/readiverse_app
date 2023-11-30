import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:readiverse_app/global/components/bottom_navbar.dart';
import 'package:readiverse_app/pages/login_page.dart';
import 'package:readiverse_app/routes/app_routes.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() {
  runApp(const MyApp());
}

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);


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
