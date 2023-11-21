import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/global/constant/themes.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: whiteColor,
        width: widthScreen,
        height: heightScreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              logoReadiverse, scale: 2,
            ),
            hGap5,
            Text(
              'Readiverse',
              style: headingReadiverse
            )
          ],
        ),
      ),
    );
  }
}
