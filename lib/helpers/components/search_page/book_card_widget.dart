
import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';

Widget BookCardWidget(image, rating) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: NetworkImage(image),
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
                Icon(Icons.star, color: Colors.yellow.shade700, size: 15),
                Text(
                rating, 
                style: bodyText
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}