import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readiverse_app/helpers/components/popup_wigdet.dart';
class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // flexibleSpace0 : FlexibleSpaceBar(),
            title: Text ('Pulang', style: GoogleFonts.poppins(
                fontSize: 16,
              color: Colors.black
            ),),
            backgroundColor: Colors.white,
            leading: BackButton(
              color: Colors.black,
            ),
          ),
          body: SingleChildScrollView(padding:EdgeInsets.all(20) ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                      width: 150,
                      height: 200,

                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        child: Image.asset('assets/images/PULANG.jpg'),
                      ),),
                ),
                Text("Pulang",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),),
                Text("Tere liye",
                    style: GoogleFonts.poppins(
                        fontSize: 12
                    )),
                SizedBox(
                    height:5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                    ),

                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemSize: 20  ,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print('Rating: $rating');
                        // Di sini Anda dapat melakukan sesuatu dengan nilai rating yang diberikan.
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Cerita bermula dari karakter utama bernama Bujang (15) yang digambarkan sangat piawai dalam berburu babi hutan. Kepandaiannya ini membuat Teuke Muda terkesan sehingga ia memutuskan untuk membawa Bujang ke kota dan mengasuhnya layaknya anak angkat.  Bujang adalah bocah yang pendiam dan tidak pernah mengenyam bangku sekolah. Namun, sejak diasuh dan diberikan pendidikan yang layak oleh Teuke Muda, Ia tumbuh menjadi Bujang dewasa yang telah memiliki pekerjaan profesional. Tidak hanya itu, Ia juga diberikan seorang guru terbaik untuk membantunya mengasah kemampuan bela dirinya. Pada akhirnya, ia pun dijadikan bodyguard oleh Teuku Muda. Kecerdasan, kekuatan, dan kemampuan bela diri yang dimiliki Bujang membuatnya terlibat dalam misi pemberantasan judi dan mencuri sandi penting yang dimiliki oleh keluarga Mater Dragon. Keberhasilannya dalam menyelesaikan mis membuat Bujang harus pindah ke Ibu kota untuk menyelesaikan misi-misi lain dari Teuke Muda. Seiring berjalannya waktu, kesehatan Teuke Muda semakin menurun. Sadar akan kondisi kesehatannya, Ia pun sempat menawarkan kepada Bujang untuk menjadi kepala keluarga dan memimpin orang-orang yang selama ini bekerja kepada dirinya.  Alasannya memilih Bujang karena Teuke Muda sudah merasakan keanehan kepada orang-orang yang bekerja padanya. Selain itu, ia merasa hanya Bujang lah satu-satunya orang bisa dijadikan kepercayaan oleh Teuke Muda untuk menggantikan posisi dirinya.  Merasa bahwa Teuke Muda telah banyak berjasa dalam hidupnya, Bujang pun memutuskan untuk  terus setia berada di sisi Teuke Muda. Hal ini dibuktikannya  dengan membantu  menangkap para pengkhianat dalam keluarga besar Teuku Muda yang rupanya memiliki dendam masa lalu. Suatu hari, Bujang mendapat kabar bahwa ibunya pergi dan tak seorang pun tahu kemana ia pergi. Mengetahui hal ini, Bujang sangat ingin segera pulang ke kampung halamanya dan ingin memastikan kebenaran kabar itu",
                  style: GoogleFonts.poppins(
                      fontSize: 10
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.bar_chart),
                      label: Text(
                        "Read more",
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ),

                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      label: Text(
                        "Reviews",
                        style: GoogleFonts.poppins(fontSize: 12),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 50,
            margin: EdgeInsets.only(left: 70,right: 20,bottom: 5,top: 10),
            color: Colors.white, // Background color of the bottom navigation bar
            child: ElevatedButton(onPressed: (){
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return PopWidget();
                },
              );
            },
                style: ButtonStyle(
                  backgroundColor:   MaterialStateProperty.all<Color>(Colors.deepPurple),
                ),
                child: Text("Get it",
                  style:  GoogleFonts.poppins(color: Colors.white),)),

          )
      ),
    );
  }
}
