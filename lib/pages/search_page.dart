
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readiverse_app/controllers/search_page_controller.dart';
import 'package:readiverse_app/helpers/constant/color.dart';
import 'package:readiverse_app/helpers/constant/fonts.dart';
import 'package:readiverse_app/helpers/constant/themes.dart';

class SearchPage extends StatelessWidget {
  
  final controller = Get.put(SearchPageController());
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
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
            // toolbarHeight: 50,
            actions: [
             Obx(() =>
             controller.isSearching.value == true
             ?Expanded(
               child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  // width: widthScreen ,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: whiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 2),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search book here...",
                        hintStyle: hintText,
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: (){
                            controller.isSearching.value = false;
                          }, 
                          icon: Icon(Icons.close, color: blackColor, )
                        ),
                      ),
                    ),
                  )
                ),
             )
              : Container(
                width: 40,
                height: 40,
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
        ),
      ),
      body: DefaultTabController(
        length: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:5  ),
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
                  unselectedLabelColor: Colors.black.withOpacity(0.3),
                  indicatorColor: Colors.black,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.black, width: 2), // Indicator height
                    insets: EdgeInsets.symmetric(horizontal: 10), // Indicator width
                  ),
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text('All', style: tabText, ),
                    ),
                    Tab(
                      child: Text('Business',  style: tabText),
                    ),
                    Tab(
                      child: Text('History', style: tabText),
                    ),
                    Tab(
                      child: Text('Romance', style: tabText),
                    ),
                    Tab(
                      child: Text('Political', style: tabText),
                    ),
                    Tab(
                      child: Text('Self Development', style: tabText),
                    ),
                    Tab(
                      child: Text('Novel', style: tabText),
                    ),
                    Tab(
                      child: Text('Technology', style: tabText),
                    ),
                    Tab(
                      child: Text('Science', style: tabText),
                    ),
                    Tab(
                      child: Text('Art', style: tabText),
                    ),
                  ],
                ),
              ),
            ],),
            // Divider
            Divider(
              thickness: 1,
              color: Color(0xFFE5E5E5),
            ),
            // Book count
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: Text("57 Books",
              style: heading3Text,
              textAlign: TextAlign.start,),
            ),
            // Divider
            Divider(
              thickness: 1,
              color: Color(0xFFE5E5E5),
            ),
            // grid
            Expanded(
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: [
                  BookCard("assets/images/pergi_tereliye.jpg", "4.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.5"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.8"),
                  BookCard("assets/images/pergi_tereliye.jpg", "5.0"),                
                  BookCard("assets/images/pergi_tereliye.jpg", "4.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.5"),
                  BookCard("assets/images/pergi_tereliye.jpg", "4.8"),
                  BookCard("assets/images/pergi_tereliye.jpg", "5.0"),
                  hGap5
                ],
              )
            )
            ],
          ),
        ),
      ),
    );

  }
}

Widget BookCard(image, rating) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: AssetImage(image), 
        fit: BoxFit.cover 
      ),
      boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)]
    ),
    child: Stack(
      // rating 
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.yellow.shade700, size: 15),
                Text(rating, 
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600
                ))
              ],
            ),
          ),
        ),
      ],
    ),
  );
}