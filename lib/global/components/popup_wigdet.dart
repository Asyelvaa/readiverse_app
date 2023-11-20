import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/themes.dart';

class GetItWidget extends StatelessWidget {
  const GetItWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height:300,
      decoration: BoxDecoration(
          borderRadius: 
          BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50)),
          // color: purple
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text("Get it",
                style: heading1Text
              ),
            ),
          ),
          Divider(
            height: 3,
            thickness: 2,
            color: greyColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              child: Column(
                children: [
                  Text("Pulang",
                    style: heading2Text
                  ),
                  Text("tere liye",
                    style: heading3Text
                  ),
                ],
              ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2                      
                      )
                    ]
                  ),
                  child: Icon(Icons.remove)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("Rp 999.999", style: heading2Text,),
                    Text("4 Order", style: bodyText,)
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 2                      
                      )
                    ]
                  ),
                  child: Icon(Icons.add)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ElevatedButton(
              onPressed: (){}, 
              style: ButtonStyle(
                backgroundColor:  MaterialStatePropertyAll(purple1),
                fixedSize: MaterialStatePropertyAll(Size(widthScreen, 60),
                 )
              ),
              child: Text("Checkout", style: heading2Text. copyWith(color: whiteColor),),
            ),
          )
        ],
      ),
    );
  }
}
