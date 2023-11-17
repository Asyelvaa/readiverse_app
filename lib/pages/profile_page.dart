import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:readiverse_app/controllers/profile_page_controller.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/images.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

class ProfilePage extends StatelessWidget {

  final ProfilePageController controller = Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: purple3,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // GRADIENT BG
            Container(
              height: heightScreen,
              width: widthScreen,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      purple3,
                      whiteColor
                    ],
                  begin: Alignment.topCenter,
                  end: Alignment.center
                )
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                
                //  PROFILE
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
                ),
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
                // TABBAR
                
              ],
            ),
          ],
        ),
      ),
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