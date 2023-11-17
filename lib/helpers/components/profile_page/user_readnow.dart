import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';

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
                  padding: EdgeInsets.symmetric(horizontal:15, ),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      BookCard('assets/images/pergi_tereliye.jpg',90),
                      BookCard('assets/images/pergi_tereliye.jpg',5),
                      BookCard('assets/images/pergi_tereliye.jpg', 45),

                    ],
                  ),
                ),
      ],
    );
  }
}


Widget BookCard(image, double readPercentage) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(right: 10),
        width: 100,
        // height: heightScreen * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(image), 
            fit: BoxFit.cover 
          ),
          boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)]
        ),
      ),
      // Indicator read percentage
    
    ],
  );
}