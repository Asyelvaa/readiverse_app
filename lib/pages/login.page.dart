
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:readiverse_app/pages/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0B1A55),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                // JUDUL
                Container(
                  width: 360,
                  height: 227,
                  child: Center(
                    child: Text(
                      "Readiverse",
                      style:
                      GoogleFonts.milonga(fontSize: 30, color: Colors.white),
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
                        Text(
                          "Hai!",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Color(0xFF1D1617),
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Color(0xFF1D1617),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        inputUser("email", Icon(Icons.email_outlined), false),

                        SizedBox(
                          height: 5,
                        ),
                        inputUser("password", Icon(Icons.lock_outline), true),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF0B1A55),
                                fixedSize: Size(316, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )),
                        Text(
                          "or",
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFFFFFFF),
                                fixedSize: Size(316, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            child: Text(
                              "Continue with Google",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dont have an account yet?",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.black),
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(SignUp());
                              },
                              child:Text(
                                "Register",
                                style: GoogleFonts.poppins(
                                    fontSize: 14, color: Color(0xFFEB5E28)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget inputUser(String hintText, Icon prefix, obsecure) {
  return TextFormField(
    obscureText: obsecure ,
    decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefix,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Color(0xFFCCC4B6), width: 2.0))),
  );
}


