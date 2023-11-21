import 'package:flutter/material.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class UserLikes extends StatelessWidget {
  const UserLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // USER LIKE 
                SizedBox(height: 20,),           
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    ' Asyella\'s like',
                    style: heading2Text,
                  ),
                ),
                Container(
                  height: heightScreen * 0.06,
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      likesCategory("50%", "Business"),
                      likesCategory("30%", "Self Development"),
                      likesCategory("20%", "Novel"),
                    ],
                  ),
                ),
      ],
    );
  }
}

Widget likesCategory(percent, category) {
  return Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: blackColor.withOpacity(0.15),
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            )                      
                          ]
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent                                
                              ),
                              child: Center(
                                child: Text(
                                  percent,
                                  style: bodyText.copyWith(color: purple2),
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              category,
                              style: heading3Text,
                            )
                          ],
                        ),
                      );
}