import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:readiverse_app/controllers/profile_page_controller.dart';
import 'package:readiverse_app/helpers/components/profile_page/profile_container.dart';
import 'package:readiverse_app/helpers/components/profile_page/user_likes.dart';
import 'package:readiverse_app/helpers/components/profile_page/user_readnow.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                
                  ProfileContainer(),
                  UserLikes(),
                  UserReadNow(),
                  // TABBAR
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}
