import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget widgetPromoverse() {
  return Container(
    child: Stack(
      clipBehavior: Clip.none,
       children: [
          Container(
            height: 80,
            width: 330,
            child: SvgPicture.asset('assets/images/promoverse_container.svg'),
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
