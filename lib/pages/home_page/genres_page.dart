import 'package:flutter/material.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple1,
        title: Text(
          'Genres', 
          style: heading2Text.copyWith(color: whiteColor),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.65,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15
          ),
          children: [
            BookCard(bookImages1, '5.0'),
            BookCard(bookImages2, '5.0'),
            BookCard(bookImages4, '5.0'),
            BookCard(bookImages5, '5.0'),
            BookCard(bookImages6, '5.0'),
          ],
        ),
      )
    );
  }
}


Widget BookCard(image, rating) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(image), 
        fit: BoxFit.cover 
      ),
      boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)]
    ),
    child: Stack(
      // rating 
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star, 
                  color: Colors.yellow.shade700, 
                  size: 15
                ),
                Text(rating, 
                style: bodyText)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}