import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Lawu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[400],
          actions: <Widget>[
            IconButton(
                icon: Icon(Theme.of(context).brightness == Brightness.light
                    ? Icons.lightbulb_outline
                    : Icons.highlight),
                onPressed: () {
                  popupDialogue(context);
                })
          ],
          centerTitle: true,
          title: Text(
            'Java Mountain',
          ),
        ),
        body: Stack(children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * 100,
            decoration: BoxDecoration(
              color: Colors.greenAccent[200],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),


          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Expanded(
                          child: GridView.count(
                              crossAxisCount: 1,
                              childAspectRatio: .10,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              children: <Widget>[
                                Container(
                                  height: size.height * 100,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(10),
                                  child:Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Gunung Lawu",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/lawu.jpg",
                                          width: 380.0,
                                          height: 200.0,
                                          fit: BoxFit.contain,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5.0),
                                        ),
                                        Text(
                                          "Sejarah                                                                                                                              ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "Sejarah Gunung Lawu kerap dikaitkan dengan legenda yang menyelubungi masa lalu gunung ini. Keberadaan Candi Sukuh dan Candi Cetho seolah menjadi penanda bahwa Gunung Lawu terhubung dengan Kerajaan Majapahit, terutama di masa menjelang keruntuhannya yakni pada abad ke-15 Masehi. Puncak Lawu disebut-sebut menjadi tempat bersemayamnya Prabu Brawijaya V (1468-1478), raja terakhir Majapahit. Brawijaya V adalah ayahanda Raden Patah (1475-1518) yang nantinya mendirikan kerajaan Islam pertama di Jawa,Kesultanan Demak, sekaligus memungkasi riwayat Majapahit. Terlepas dari pro dan kontra yang kemudian muncul, keterkaitan Prabu Brawijaya V dengan Gunung Lawu tercatat dalam beberapa referensi. Salah satunya dinukil dari Ensiklopedi Adat-istiadat Budaya Jawa (2007) karya Purwadi. Disebutkan, kala itu Majapahit harus menghadapi peperangan dengan Kerajaan Keling (Kediri) yang dipimpin oleh Raja Girindra Wardhana pada 1478. Lantaran terdesak, Brawijaya V menyingkir ke Gunung Lawu dan menghabiskan sisa hidupnya sebagai pertapa. Petilasan terakhir sang raja dikenal sebagai Pringgondani.Ada pula yang menyebut alasan Brawijaya V menyepi ke Gunung Lawu adalah karena ia mempunyai firasat bahwa Majapahit di ambang keruntuhan dan sulit diselamatkan. Ditambah lagi, Brawijaya V risau karena sang putra, Raden Patah, memeluk Islam dan membangun kekuatan baru di Demak. Jejak Prabu Brawijaya V di Gunung Lawu dapat ditelisik dari banyaknya penganut Buddha di desa-desa yang terletak di lereng gunung tersebut. Ong Hok Ham lewat buku Madiun dalam Kemelut Sejarah (2018) menuliskan, Raden Patah pernah mengutus adiknya yang bernama Raden Alkali untuk mengislamkan warga di lereng timur Gunung Lawu.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Ketinggian dan Koordinat                                                                       ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Puncak Lawu (Hargo Dumilah) di ketinggian 3266 mdpl terletak pada kordinat 111o11'39''E, 07o37'38''S.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Jalur Pendakian                                                                                                       ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Ada tiga jalur utama pendakian untuk menuju puncak Gunung Lawu, yakni dimulai dari Cemorokandang di Tawangmangu (Jawa Tengah), Candi Cetho di Karanganyar (Jawa Tengah), atau Cemorosewu di Sarangan (Jawa Timur).\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Merapi                                                    ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Kawah Telaga Kuning.\n2.	Kawah Telaga Lembung Selayur.\n3.	Wana wisata sekitar Gunung Lawu.\n4.	Air Terjun Suwono.\n5.	Air Terjun pengantin.\n6.	Watu jonggol\n                                                                                                                             ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Lokasi                                                                                                                  ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Terletak di Pulau Jawa, Indonesia, tepatnya di perbatasan Provinsi Jawa Tengah dan Jawa Timur. Gunung Lawu terletak di antara tiga kabupaten yaitu Kabupaten Karanganyar, Jawa Tengah, Kabupaten Ngawi, dan Kabupaten Magetan, Jawa Timur.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/Vc7pwaRsphZUe2ey5');
                                          },
                                          child: Container(
                                            padding:
                                            EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                                            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                            color: primaryBlack,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'MAPS ALAMAT',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ),



                              ]),
                        )



                      ]
                  )))]));

  }
}
