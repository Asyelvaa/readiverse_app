import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color(0xFF0B1A55);
const Color secondaryColor = Color(0xFF81A6F8);
const Color blackColor = Color(0xFF1D1617);
const Color whiteColor = Color(0xFFFBFBFB);
const Color greyColor = Color(0xFFCCC4B6);
const Color orangeColor = Color(0xFFEB5E28);
const Color yellowColor = Color(0xFFFFBF69);


figmaFontsize(int fontSize) {
  return fontSize * 0.95;
}

TextStyle commonText = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: blackColor,
        fontWeight: FontWeight.normal,
        fontSize: figmaFontsize(12)
    )
);
TextStyle h1Text = GoogleFonts.milonga(
    textStyle: TextStyle(
        // color: whiteColor,
        // fontWeight: FontWeight.normal,
        fontSize: figmaFontsize(36)
    )
);
TextStyle h3Text = GoogleFonts.poppins(
    textStyle: TextStyle(
        // color: blackColor,
        // fontWeight: FontWeight.normal,
        fontSize: figmaFontsize(18)
    )
);
TextStyle h2Text = GoogleFonts.poppins(
    textStyle: TextStyle(
        // color: blackColor,
        // fontWeight: FontWeight.normal,
        fontSize: figmaFontsize(20)
    )
);
TextStyle b1Text = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: figmaFontsize(16)
    )
);
TextStyle b2Text = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: figmaFontsize(14)
    )
);
TextStyle b3Text = GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: figmaFontsize(12)
    )
);

//IMAGE ASSETS
String logo = "assets/readiverseLogo.png";