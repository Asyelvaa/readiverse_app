import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopWidget extends StatelessWidget {
  const PopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
          color: Colors.white
      ),
      child: Column(
        children: [
          Text("Get it",
            style: GoogleFonts.poppins(
                fontSize: 30
            ),
          ),
          Divider(
            height: 3,
            thickness: 3,
            color: Colors.black,
          ),
          Text("Pulang",
            style: GoogleFonts.poppins(
                fontSize: 22
            ),
          ),
          Text("tere liye",
            style: GoogleFonts.poppins(
                fontSize: 18
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.remove),
              Column(
                children: [
                  Text("Rp 999.999"),
                  Text("4 Order")
                ],
              ),
              Icon(Icons.add)
            ],
          ),
          ElevatedButton(onPressed: (){}, child: Text("Checkout"),
          )
        ],
      ),

    );
  }
}
