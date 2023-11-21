import 'package:flutter/material.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
                  clipBehavior: Clip.none,
                  children: [                    
                    // PROFILE CONTAINER
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: heightScreen * 0.12),
                          margin: EdgeInsets.only(top: 50),
                          width: widthScreen * 0.9,
                          height: heightScreen * 0.32,
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
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Like',
                                          style: heading2Text,
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                          'Read',
                                          style: heading2Text,
                                        ),                                        
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Row(
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
                                                padding: EdgeInsets.only(right: 25),
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
                                                top: -7,
                                                left: 5,
                                                child: Image.asset(logoReadBook, scale: 10,))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    // PROFILE PICT
                    Positioned(
                      top: -heightScreen * 0.07,
                      left: widthScreen * 0.33,
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
                ),
                
                
                
      ],
    );
  }
}

