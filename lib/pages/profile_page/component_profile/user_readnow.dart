import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';

class UserReadNow extends StatelessWidget {
  const UserReadNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // USER READ NOW
                SizedBox(height: 20,),               
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Read Now',
                    style: heading2Text,
                  ),
                ),
                Container(
                  height: 260,
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      BookCard(
                        'assets/images/book1.jpg',
                        90, 
                        "Harry Potter"
                      ),
                      BookCard(
                        'assets/images/pergi_tereliye.jpg',
                        5,
                        "Pergi"
                      ),
                      BookCard(
                        'assets/images/book2.jpg', 
                        45,
                        "Babi ngesot"
                      ),

                    ],
                  ),
                ),
      ],
    );
  }
}


Widget BookCard(image, int readPercentage, bookTitle) {
  return Container(
    width: 150,
    padding: EdgeInsets.only(top: 20),
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: whiteColor,
      boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)]
    ),
    child: Column(
      children: [
      // IMAGES
      Image.asset(image, width: 160, height: 170, ),
      // TITLE & PERCENT
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5
         ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bookTitle, 
              style: bodyText,
            ),
            CircularPercentIndicator(
              radius: 15,
              lineWidth: 3.0,
              percent: (readPercentage / 100),
              center: Text('${readPercentage}%', style: TextStyle(fontSize: 10),),
              progressColor:purple2,
            )
          ],
        ),
      )
      ],
    
    ),
  );
}