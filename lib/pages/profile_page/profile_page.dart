import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:readiverse_app/controllers/profile_page_controller.dart';
import 'package:readiverse_app/pages/profile_page/component_profile/profile_container.dart';
import 'package:readiverse_app/pages/profile_page/component_profile/user_likes.dart';
import 'package:readiverse_app/pages/profile_page/component_profile/user_readnow.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class ProfilePage extends StatelessWidget {

  final ProfilePageController controller = Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
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
                        bgColor.withAlpha(50)
                      ],
                    begin: Alignment.topCenter,
                    end: Alignment.center
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [                
                    ProfileContainer(),
                    UserLikes(),
                    UserReadNow(),
                    // TAB BAR
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: TabBar(
                              controller: controller.tabController,
                              indicatorColor: purple1,
                              labelColor: purple1,
                              unselectedLabelColor: greyColor,
                              labelStyle:heading2Text.copyWith(fontSize: 16),
                              unselectedLabelStyle: heading2Text.copyWith(fontSize: 16),
                              tabs: [
                                Tab(text: 'Shelves'),
                                Tab(text: 'Achievement'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: heightScreen * 0.5,
                            child: TabBarView(
                              controller: controller.tabController,
                              children: [
                                tabShelves(),
                                Container(
                                  child: Center(
                                    child: Text('Achievement'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          controller.signOut();
                         },
                      child: Text ('LogOut',
                      style: heading2Text.copyWith(color: whiteColor, fontSize: 16),
                      )
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}

Widget tabShelves() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child:   ListView(      
      children: [
        contentShelf("My fav", "5 books"),
        contentShelf("Self help", "2 books"),
        // BUTTON ADD SHELVES
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: hintColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: blackColor, width: 1)
          ),
          margin: EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add)
            ],
          ),
        ),      
      ],
    )
  );
}

Widget tabAchievement() {
  return Container(
    child: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1/1,
        crossAxisSpacing: 10,
        mainAxisExtent: 10
      ),
      children: [
        Container(

        )
      ],
    )
  );
}

Widget contentShelf(title, count) {
  return Stack(
    clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 20, bottom: 20, right: 20),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                              BoxShadow(
                                color: blackColor.withOpacity(0.15),
                                blurRadius: 5,
                              )
                            ]
              ),
              margin: EdgeInsets.only(bottom: 20, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [              
                  Text(
                    title,
                    style: heading3Text,
                  ),
                  Text(
                    count,
                    style: heading3Text.copyWith(
                      color: purple2
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(logoReadBook, scale: 8),
              top: -5,
            )          
            ],
        );
}