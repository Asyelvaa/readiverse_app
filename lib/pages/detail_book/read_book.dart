import 'package:flutter/material.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class ReadBookPage extends StatelessWidget {
  const ReadBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Book Title', 
          style: heading1Text.copyWith(color: blackColor),
        ),
        centerTitle: true,
        backgroundColor:whiteColor,
        elevation: 0,
        toolbarHeight: 60,
        leading: Icon(Icons.arrow_back_ios_new, color: blackColor,),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chapter 1',
                        style: heading1Text,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet',
                        style: heading3Text.copyWith(color: greyColor),
                      ),
                      Container(
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // BOOK TEKS
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel facilisis eros, interdum dictum tortor. Etiam efficitur dignissim dolor nec pharetra. Maecenas commodo urna sed suscipit commodo. In ultrices libero non dui rutrum commodo. Aliquam dictum molestie elit, quis aliquam elit venenatis quis. Nullam viverra eu lacus vitae efficitur. Suspendisse potenti. Duis vitae pellentesque magna, id euismod ante. Morbi in facilisis dui. Duis aliquam mattis ullamcorper. Maecenas id arcu sed tellus sollicitudin aliquam. Aenean varius nulla eu urna elementum, nec molestie odio tempus.Mauris efficitur urna purus, quis tempus tellus mollis varius. Maecenas varius, erat in dapibus pretium, ante massa fringilla ex, sagittis feugiat mi dolor vitae odio. Sed scelerisque dignissim magna at elementum. Integer pulvinar velit a orci facilisis, eu vulputate risus dapibus. In laoreet nec diam in maximus. Fusce quis vulputate neque, sit amet lacinia mi. In feugiat turpis placerat urna commodo commodo ut facilisis sapien. Aliquam tempor neque ut dapibus facilisis. Nulla a lacus vitae lorem lobortis rhoncus quis id lacus. Mauris bibendum lorem eu odio ullamcorper laoreet. In vel lacinia odio. Maecenas in sagittis felis.In hac habitasse platea dictumst. Sed enim nibh, lobortis vitae pulvinar non, hendrerit vitae magna. Mauris metus mi, elementum vel lacus eu, tristique malesuada sem. Praesent non congue lorem. Nulla facilisi. Suspendisse non risus nec lacus rhoncus sodales venenatis ac arcu. Integer laoreet tortor eget lorem scelerisque, id ullamcorper eros faucibus. Vivamus pretium, augue eget vehicula euismod, ante lectus sollicitudin nulla, a molestie lacus ipsum eu diam. Nam nec tellus eget ipsum semper tempus. Vivamus in erat a quam gravida rutrum. Phasellus suscipit est quis mauris sodales pharetra. Vivamus hendrerit tellus eget nibh facilisis tincidunt. Aenean ut eleifend ex. Phasellus lorem massa, tristique sit amet arcu a, vehicula ornare augue.Donec sit amet purus non urna scelerisque pellentesque. Nunc eu nunc nec orci pulvinar pharetra. Curabitur viverra posuere est eu vulputate. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam sed porta lorem. Integer nec velit sit amet sapien dignissim fringilla. Proin ut pulvinar ipsum, in gravida arcu.Duis eget metus et dui aliquet bibendum sit amet sed lacus. Praesent eget tortor quis ipsum tempus vehicula gravida et diam. In nisl ex, pellentesque in diam eu, varius commodo nibh. Ut non nisl libero. Curabitur auctor gravida augue. Praesent ut mauris sit amet nunc pretium dignissim vitae ut quam. Sed quis nunc quis lectus varius elementum quis eu massa. Nam vel eros lacinia, molestie dolor id, semper metus. Quisque at malesuada erat.',
                        style: readBookText,
                      ),
                    SizedBox(height: heightScreen * 0.15,)
                    ]                  
                  ),
                  
                ],
              ),
            ),
          ),
          // BLUR LAYER
          Positioned(
            bottom: 0,
            child: Container(
                  width: widthScreen,
                  height: heightScreen * 0.2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        whiteColor.withOpacity(0),
                        whiteColor.withOpacity(0.5),
                        whiteColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                    
                  ),
                ),
          ),
          // ARROW BUTTON 
          Positioned(
            bottom: 20,
            left: widthScreen * 0.07,
            child: Container(
              width: widthScreen * 0.85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: purple1,
                      boxShadow: [
                        BoxShadow(
                          color: blackColor.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 5)
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: whiteColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: purple1,
                      boxShadow: [
                        BoxShadow(
                          color: blackColor.withOpacity(0.1),
                          blurRadius: 2,
                          offset: Offset(0, 5)
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: whiteColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
