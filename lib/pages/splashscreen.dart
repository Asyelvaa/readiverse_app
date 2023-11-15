import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color(0xFFFAFAFA),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              width: 230,
              height: 200,
            ),
            Text(
              'Readiverse',
              style: GoogleFonts.milonga(
                  fontSize: 38,
                  fontWeight: FontWeight.bold
              ),

            )
          ],
        ),
      ),
    );
  }
}
