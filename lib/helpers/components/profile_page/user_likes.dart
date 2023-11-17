import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

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
                  height: heightScreen * 0.05,
                  padding: EdgeInsets.symmetric(horizontal: 10,),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
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
                                color: greyColor
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Books Category',
                              style: heading3Text,
                            )
                          ],
                        ),
                      ),
                      Container(
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
                                color: greyColor
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              'Books Category',
                              style: heading3Text,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      ],
    );
  }
}