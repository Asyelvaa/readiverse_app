
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/global/components/input_user_widget.dart';
import 'package:readiverse_app/global/constant/color.dart';
import 'package:readiverse_app/global/constant/fonts.dart';
import 'package:readiverse_app/global/constant/themes.dart';
import 'package:readiverse_app/pages/login.page.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: purple1,
        body: SingleChildScrollView(
          child: Container(
            height: heightScreen,
            child: Column(
              children: [
                // JUDUL
                Container(
                  height: heightScreen * 0.3,
                  child: Center(
                    child: Text(
                      "Readiverse",
                      style: headingReadiverse.copyWith(color: whiteColor),
                    ),
                  ),
                ),
                // FORM
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // HEADING
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: Container(
                              child: Column(
                                children: [
                                  Text(
                                      "Hai!",
                                      style: heading2Text
                                  ),
                                  Text(
                                      "Welcome back",
                                      style: heading1Text
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // TEXTFIElD
                          Container(

                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: inputUser("Username", Icon(Icons.email_outlined), false),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: inputUser("Email", Icon(Icons.email_outlined), false),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: inputUser("Password", Icon(Icons.lock_outline), true),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),
                          // BUTTON
                          Container(
                            child: Column(
                              children :[
                                ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(widthScreen, 60),
                                        backgroundColor:purple1,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        )),
                                    child: Text(
                                      "Login",
                                      style: heading2Text.copyWith(color: whiteColor, fontSize: 16),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "or",
                                    style: heading3Text,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {

                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: whiteColor,
                                        fixedSize: Size(widthScreen, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        )),
                                    child: Text(
                                      "Continue with Google",
                                      style: heading2Text. copyWith(fontSize: 16),
                                    )),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        "Already have account??",
                                        style: heading3Text
                                    ),
                                    InkWell(
                                      onTap: (){
                                        Get.to(LoginPage());
                                      },
                                      child:Text(
                                        " Register",
                                        style: heading3Text.copyWith(color: purple2),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

