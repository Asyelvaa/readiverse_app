import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/pages/home_page.dart';
import 'package:readiverse_app/pages/profile_page.dart';
import 'package:readiverse_app/pages/search_page.dart';

class bottomNavbar extends StatelessWidget {
  const bottomNavbar({super.key});
  
  @override
  Widget build(BuildContext context) {

  PersistentTabController? _controller;
  _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
        return [
          HomePage(),
          SearchPage(),
          ProfilePage()
        ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: Icon(Icons.home),
                title: ("Home"),
                activeColorPrimary: purple2,
                inactiveColorPrimary: greyColor,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.search),
                title: ("Search"),
                activeColorPrimary: purple2,
                inactiveColorPrimary: greyColor,
            ),
            PersistentBottomNavBarItem(
                icon: Icon(Icons.person_2_rounded),
                title: ("Profile"),
                activeColorPrimary: purple2,
                inactiveColorPrimary: greyColor,
            ),
        ];
    }


    return PersistentTabView(
      context, 
      controller: _controller,
      screens: _buildScreens(),
      items:_navBarsItems(),
      confineInSafeArea: true,
      navBarHeight: 60,

        hideNavigationBarWhenKeyboardShows: true, 
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        itemAnimationProperties: ItemAnimationProperties( 
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation( 
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      );
  }
} 