import 'package:flutter/material.dart';
import 'package:readiverse_app/pages/home_page/component_home/by_genre_widget.dart';
import 'package:readiverse_app/pages/home_page/component_home/for_you_widget.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/pages/home_page/component_home/promoverse_widget.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          margin: EdgeInsets.all(10),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image.asset(logoReadiverse,
            height: 40 ,
            ),
            toolbarHeight: 50,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: bgColor,
                  // backgroundImage: AssetImage(user, ), 
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widgetForYou(),
              SizedBox(height: 20),
              widgetPromoverse(),
              SizedBox(height: 20),
              widgetGenre(),
              SizedBox(height: heightScreen*0.2,)
            ],
          ),
        ),
      ),
    );
  }
}

