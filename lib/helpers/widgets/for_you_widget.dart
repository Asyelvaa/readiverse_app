import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget widgetForYou() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brings For You✨',
          style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          ),
        ),  
        Container(
          child: CarouselSlider(
          options: CarouselOptions(
            height: 200,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
          ),
          items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
        ),
        ),     
      ],
    ),
  );
}