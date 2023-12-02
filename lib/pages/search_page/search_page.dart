import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/search_page_controller.dart';
import 'package:readiverse_app/pages/detail_book/detail_book_page.dart';
import 'package:readiverse_app/pages/search_page/component_search/book_card_widget.dart';
import 'package:readiverse_app/pages/search_page/component_search/searchbar_widget.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/routes/app_routes.dart';

class SearchPage extends StatelessWidget {
  
  final controller = Get.put(SearchPageController());
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SearchbarCustom(),
      ),
      body: DefaultTabController(
        length: controller.categories.length,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:5 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start  ,
            children: [
            // Tab
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                height: 30,
                child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: greyColor,
                  labelColor: purple2,
                  indicatorColor: purple2,
                  indicatorPadding: EdgeInsets.only(left:10, right: 10),
                  tabs: [
                    for (final category in controller.categories)
                      Tab(
                        child: Text(category.name),
                      ),
                  ],
                ),
              ), 
            ],
            ),
            // BOOK LENGTH
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Divider
                  Divider(
                    thickness: 1,
                    color: Color(0xFFE5E5E5),
                  ),
                  // Book count
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Text(
                      "10 Books",
                      style: heading3Text,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  // Divider
                  Divider(
                    thickness: 1,
                    color: Color(0xFFE5E5E5),
                  ),
                ],
              ),
            ),
            
            // CATEGORY CONTENT
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TabBarView(
                  children: [
                   for (final category in controller.categories)
                   GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.65,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15
                    ),
                    itemCount: category.books.length,
                    itemBuilder: (context, index) {
                      final book = category.books[index];
                      return  InkWell(
                        onTap: () {
                          Get.toNamed(
                            Routes.DETAIL_BOOK_PAGE, 
                            arguments:"zyTCAlFPjgYC"
                          );
                        },
                        child: BookCardWidget(
                          book.images ?? 'URL_TO_DEFAULT_IMAGE', 
                          book.rating ?? '0.0'                                              
                        ),
                      );
                      }
                    )
                  ]
                          
                ),
              ),
            )
            
            ],
          ),
        ),
      ),
    );

  }
}
