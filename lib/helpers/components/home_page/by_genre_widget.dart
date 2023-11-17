import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/images.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';
import 'package:readiverse_app/pages/genres_page.dart';

Widget widgetGenre() {
  return Container(
          width: widthScreen,
          height: heightScreen * 0.3,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'By Genre',
                  style: heading1Text,
                ),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: 
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1/1.1),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    genreItem('Business', logoBusiness),
                    genreItem('History', logoHistory),
                    genreItem('Novel', logoNovel),
                    genreItem('Art', logoArt),
                    genreItem('Political', logoPolitical),
                    genreItem('Technology', logoTechnology),
                    genreItem('Self Dev', logoSelfDev),
                    genreItem('Science', logoScience),
                  ],
                ),
              )
            ],
          ),
  );
}

Widget genreItem(title, image){
  return Container(
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(Genres());
          },
          child: Container(
             height: 70,
             width: 70,
             decoration: BoxDecoration(
              color: purple1,
              shape: BoxShape.circle
             ),
             child: Image.asset(image, width: 45, height: 45,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: subtitle
          ),
        )
      ],
    )
  );
}


                  