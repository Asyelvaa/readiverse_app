import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/components/home_page/by_genre_widget.dart';
import 'package:readiverse_app/helpers/components/home_page/for_you_widget.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/components/home_page/promoverse_widget.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

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
            title: Image.asset('assets/images/readiverseLogo.png',
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
              hGap5,
            ],
          ),
        ),
      ),
    );
  }
}

