import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/search_page_controller.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/global/constant/themes.dart';
import 'package:readiverse_app/pages/home_page/genres_page.dart';
class widgetGenre extends StatelessWidget {

  final controller = Get.put(SearchPageController());

  @override
  Widget build(BuildContext context) {
    return Container(
          width: widthScreen,
          height: heightScreen * 0.45,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'By Genre',
                  style: heading1Text,
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, 
                    childAspectRatio: 1/1.1
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    if (index < controller.categories.length) {
                      final _category = controller.categories[index];
                      return genreItem(_category.name, _category.image);
                    } else {
                      return Container(child: Text('no data'),); // or some default widget
                    }                                   
                  },
                ),
              )
            ],
          ),
  );
  }
}

Widget genreItem(title, image){
  return Container(
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(Genres());
          },
          child: Container(
             height: 70,
             width: 70,
             decoration: BoxDecoration(
              color: purple1,
              shape: BoxShape.circle
             ),
             child: Image.asset(image, width: 45, height: 45,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: subtitle
          ),
        )
      ],
    )
  );
}


                  