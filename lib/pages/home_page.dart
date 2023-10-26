import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';
import 'package:readiverse_app/helpers/widgets/by_genre_widget.dart';
import 'package:readiverse_app/helpers/widgets/for_you_widget.dart';
import 'package:readiverse_app/helpers/widgets/promoverse_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/images/readiverseLogo.png',
        height: 40 ,
        ),
        toolbarHeight: 50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/logoSelfDev.png'),
            ),
          )
        ],
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
            ],
          ),
        ),
      ),
    );
  }
}

