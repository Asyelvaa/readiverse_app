import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';

Widget navbar() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
     color: whiteColor,
     height: 70,
     child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, size: 30,),
              ),
              Text('Home', style: bodyText,)
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person, size: 30,),
              ),
              Text('Profile', style: bodyText,)
            ],
          ),
        ],
     ),
  );
}