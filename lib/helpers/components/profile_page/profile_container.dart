import 'package:flutter/material.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/images.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: widthScreen * 0.05,
                child: Container(
                  padding: EdgeInsets.only(top: heightScreen * 0.13),
                  margin: EdgeInsets.only(top: 50),
                  width: widthScreen * 0.9,
                  height: heightScreen * 0.3,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: blackColor.withOpacity(0.15),
                        blurRadius: 10,
                        offset: Offset(0, 5)
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Asyella', 
                        style: heading2Text,
                      ),
                      Text(
                        'asyellave@gmail.com', 
                        style: heading3Text,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 30),
                                    height: heightScreen * 0.05,
                                    decoration: BoxDecoration(
                                      color: hintColor,
                                      borderRadius: BorderRadius.circular(16),
                                      // border: Border.all(color: purple2, width: 2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '10 Books', 
                                          style: heading3Text.copyWith(
                                            color: blackColor
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: -5,
                                    left: 5,
                                    child: Image.asset(logoLikeBook, scale: 10,)
                                    )
                                ],
                              ),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 20),
                                    height: heightScreen * 0.05,
                                    decoration: BoxDecoration(
                                      color: hintColor,
                                      borderRadius: BorderRadius.circular(16),
                                      // border: Border.all(color: purple2, width: 2)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '30 Books', 
                                          style: heading3Text.copyWith(
                                            color: blackColor
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: -15,
                                    left: -2,
                                    child: Image.asset(logoReadBook, scale: 8.5,))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -heightScreen * 0.07,
                left: widthScreen * 0.35,
                child: Container(
                  width: widthScreen * 0.3,
                  height: heightScreen * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                      color: blackColor.withOpacity(0.15),
                      blurRadius: 10,
                      offset: Offset(0, 5)
                    )
                    ]
                  ),
                ),
              )
            ],
          );
  }
}