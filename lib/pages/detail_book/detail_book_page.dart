import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/controllers/detail_book_controller.dart';
import 'package:readiverse_app/global/components/popup_wigdet.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/models/book_model.dart';
class DetailPage extends GetView<DetailController> {
  // final String bookId;

  // DetailPage({required this.bookId}) {
  //   controller.fetchBookDetails(bookId);
  // }

  @override
  Widget build(BuildContext context) {

    final String bookId = Get.arguments;
    final DetailController controller = Get.put(DetailController(bookId));
      return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text(
            controller.book.title ?? "unkown title"
             "Unknown Title",
            style: heading2Text,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: GetBuilder<DetailController>(
        builder: (controller) {
           if (controller.isLoading.isTrue) {
            return CircularProgressIndicator();
          } else {
            return buildDetailBook(controller.book);
          }
        },
      ),
        bottomNavigationBar:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: purple1,
                    ),
                  child: Icon(Icons.bookmark_outline_rounded, color: whiteColor,),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Get.bottomSheet(
                        GetItWidget(),
                      shape: OutlineInputBorder(
                        borderRadius:
                          BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50)),
      
                      )
      
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: purple1,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(
                      child: Text(
                          "Get it",
                          style: heading2Text.copyWith(color: whiteColor)
                        ),
                    )
                    ),
                  ),
                ),
            ],
          ),
        )
    );
  }
}

Widget buildDetailBook(Book book) {
 return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // BOOK IMAGES
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        width: 150,
                        height: 220,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          child: Image.asset(
                            bookImages1, 
                            fit: BoxFit.cover
                          ),
                        )
                      ),
                  ),
                  // BOOK TITLE
                  Text(
                    book.title ?? "",
                    style: heading1Text,
                  ),
                  Text(
                    book.author ?? "",
                    style: heading3Text,
                  ),                  
                  if (book.rating != null)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RatingBarIndicator(
                          rating: double.parse(book.rating!),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(width: 10,),
                        Text('${book.rating}', style: heading3Text,),
                        Text(' / 5.0', style: heading3Text,),
                      ],
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      book.description ?? "",
                      style: bodyText,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(whiteColor),
                          ),
                          onPressed: () {
                            Get.toNamed('/read-book');
                          },
                          icon: Icon(Icons.bar_chart, color: purple2,),
                          label: Text(
                            "Read more",
                            style: heading3Text
                          ),
                        ),
                      ), 
                      SizedBox(width: 20,),         
                      Expanded(
                        child: TextButton.icon(
                          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(whiteColor)),
                          onPressed: () {},
                          icon: Icon(Icons.message, color: purple2,),
                          label: Text(
                            "Reviews",
                            style: heading3Text
                          ),
                        ),
                      ),
          
                    ],
                  ),
                ],
              ),
            );
}