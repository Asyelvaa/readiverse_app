import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/search_page_controller.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';

Widget SearchbarCustom() {
  final controller = Get.put(SearchPageController());

   return Container(
          margin: EdgeInsets.all(10),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Obx(() => 
            controller.isSearching.value == true
              ? Container()
              : Image.asset('assets/images/readiverseLogo.png',
              height: 40 ),
            ),
            actions: [
             Obx(() =>
             controller.isSearching.value == true
             ?Expanded(
               child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Search book here...",
                            hintStyle: heading3Text.copyWith(color: greyColor),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: (){
                                controller.isSearching.value = false;
                              }, 
                              icon: Icon(Icons.close, color: blackColor, )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ),
             )
              : Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: whiteColor
                ),
                child: IconButton(
                  onPressed: (){
                    controller.isSearching.value = true;
                  }, 
                  icon: Icon(Icons.search, color: Colors.black,)
                ),
              ) 
             )
            ],
          ),
        );
}