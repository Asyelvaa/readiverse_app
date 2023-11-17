import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Genres', style: heading2Text,),
        leading: Icon(Icons.arrow_back, color: blackColor,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: widthScreen,
            height: heightScreen,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
              ),
              children: [
                BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                BookCard("assets/images/pergi_tereliye.jpg","5.0"),
                BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
              ],
            ),
          ),
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