import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:readiverse_app/helpers/components/bottom_navbar.dart';
import 'package:readiverse_app/helpers/components/navigation_bar.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/components/by_genre_widget.dart';
import 'package:readiverse_app/helpers/components/for_you_widget.dart';
import 'package:readiverse_app/helpers/components/promoverse_widget.dart';
import 'package:readiverse_app/helpers/constant/images.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
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
                  backgroundColor: whiteColor,
                  backgroundImage: AssetImage(user),
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
              // widgetGenre(),
            ],
          ),
        ),
      ),
     
      
      
    );
  }
}

