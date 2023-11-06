import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

Widget widgetGenre() {
  return Container(
    width: 330,
          height: 220,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xFFF2F1F0),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'By Genre',
                style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: 
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                  children: [
                    genreItem('Business', 'assets/images/logoBussines.png'),
                    genreItem('History', 'assets/images/logoHistory.png'),
                    genreItem('Novel', 'assets/images/logoNovel.png'),
                    genreItem('Art', 'assets/images/logoArt.png'),
                    genreItem('Political', 'assets/images/logoPolitical.png'),
                    genreItem('Technology', 'assets/images/logoTechnology.png'),
                    genreItem('Self Dev', 'assets/images/logoSelfDev.png'),
                    genreItem('Science', 'assets/images/logoScience.png'),
                  ],
                ),
              )
            ],
          ),
  );
}

Widget genreItem(title, image){
  return Container(
    height: 150,
    child: Column(
      children: [
        Container(
           height: 60,
           width: 60,
           decoration: BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle
           ),
           child: Image.asset(image, width: 50, height: 50,),
        ),
      
        Expanded(
          child: Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500
            ),
          ),
        )
      ],
    )
                    
  );
}


                  