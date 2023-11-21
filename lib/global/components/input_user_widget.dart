
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/login_controller.dart';

Widget inputPassword(String hintText, Icon prefix, bool isObscure) {
  final controller = Get.put(LoginController());

  return TextFormField(
    controller: controller.ctrPassword,
    obscureText: isObscure,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefix,
      suffixIcon: IconButton(
        icon: Icon(
          isObscure
              ? Icons.visibility_off
              : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: () {
          // Toggle obfuscation status
          controller.togglePasswordVisibility();

        },
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Color(0xFFCCC4B6), width: 2.0),
      ),
    ),
  );
}

Widget inputUser(String hintText, Icon prefix) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefix,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Color(0xFFCCC4B6), width: 2.0),
      ),
    ),
  );
}