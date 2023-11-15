
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readiverse_app/data/models/book_model.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';
import 'package:readiverse_app/services/fetch_api.dart';

Widget widgetForYou() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          'Brings For You ✨', 
          style: heading1Text,),
      ),

      FutureBuilder(
        future: Api().getAllBook(), 
        builder: ((context, snapshot){
          if (snapshot.hasData) {
            return CarouselSlider.builder(
              itemCount: snapshot.data!.length, 
              options: CarouselOptions(
                height: 250,
                viewportFraction: 0.45,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex) {
                final book = snapshot.data![index];
                return GestureDetector(
                  onTap: () {
                    Get.toNamed('/detailMoviePage', arguments: snapshot.data![index]);
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: widthScreen,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                          image: NetworkImage(book.images ?? 'URL_TO_DEFAULT_IMAGE'),
                          fit: BoxFit.cover, 
                        ),
                        
                        ),
                      ),
                    ],
                  )              
                );
              },
              );
          } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
          }else {
            return const Center(
            child: CircularProgressIndicator(),
          );
          }
        }
        )
      ),
    ],
  );
  
}
