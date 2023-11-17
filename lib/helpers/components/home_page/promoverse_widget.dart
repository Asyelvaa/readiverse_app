import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

Widget widgetPromoverse() {
  return Container(
    child: Stack(
      clipBehavior: Clip.none,
       children: [
          Container(
            height: heightScreen * 0.1,
            width: widthScreen,
            child: SvgPicture.asset('assets/images/promoverse_container2.svg'),
          ),
          Positioned(
            right: 0,
            top: -10,
            child: Image.asset( 'assets/images/promoverse.png',),
          )
      ],           
    ),
  );
}
