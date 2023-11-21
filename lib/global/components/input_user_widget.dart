
import 'package:flutter/material.dart';

Widget inputUser(String hintText, Icon prefix, bool obscure) {
  return TextFormField(
    obscureText: obscure,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefix,
      suffixIcon: IconButton(
        icon: Icon(
          obscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: () {
          // Toggle obfuscation status
          obscure = !obscure;
        },
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Color(0xFFCCC4B6), width: 2.0),
      ),
    ),
  );
}