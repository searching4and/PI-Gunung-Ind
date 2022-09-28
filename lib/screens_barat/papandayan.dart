import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Papandayan extends StatelessWidget {
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
                                          "Gunung Papandayan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/papandayan.jpg",
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
                                          "Setiap gunung yang berada di indonesia memiliki sejarah serta cerita legenda yang berbeda-beda didalmnya. Penamaan suatu gunung akan membuat kita penasaran apa yang melatarbelakangi penamann suatu gunung karena biasanya masyarakat sekitar sering kali mengkaitannya dengan hal-hal berbau mistis dan hal-hal gaib lainnya. Kebiasaan dan kebudayaan Bangsa Indonesia sngat unik. Sama halnya dengan Gunung Papandayan, gunung api starto 2 yang memiliki ketinggian sekitar 2665 ini memiliki sejarah penamann gunung dengan mitos yang unik sekaligus menarik untuk diketahuiNama merupakan sebutan atau label yang diberikan kepada benda, manusia, tempat, produk (misalnya merek produk) dan bahkan gagasan atau konsep, yang biasanya digunakan untuk membedakan satu sama lain. Nama dapat dipakai untuk mengenali sekelompok atau hanya sebuah benda dalam konteks yang unik mapun yang diberikan.Sejarah atau asal-usul penaman Gunung Papandayan bemula dari sekelempok masyarakat yang mendengar suara gaib pada saat melintasi Gunung Papandayan. Suara yang didengar oleh sekelompok masyarakat itu terdengar seperti suara besi yang dpukul. Suara yang sama seperti seorang tukang pandai besi yang sedang membuat suatu perkakas seperti pisau, golok dan lain-lain.Sebelumnya mereka mengira suara itu suara dari mahluk ghaib, usut punya usut ternyata suara itu berasal dari kawah Gunung Papandayan. Karena suara yang keluar dari dalam Kawah Gunung Papandayan berbunyi seperti suara di tempat kerja pandai besi maka gunung ini diberi nama Gunung Papandayan.Papandayan diambil dari bahasa Sunda “Panday” yang artinya orang yang bekerja sebagai pandai besi. Benar atau tidaknya sejarah ini belum bisa dipastikan karena tidak ada yang menjelaskan secara rinci. Terlepas dari semua itu, inilah cerita yang berkembang di masyarakat sekitar kaki Gunung Papandayan. Sejak jaman Kolonial Belanda hingga saat ini, Gunung Papandayan masih menyandang status Gunung Api aktif yang kawahnya menyemburkan asap panas dan membuat lubang semburan baru seiring berjalannya waktu.\n",
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
                                          "Gunung Papandayan adalah salah satu dari 17 gunungapi di Jawa Barat. Gunungapi ini bertipe strato tipe A dan terletak pada posisi geografis  7o 19€™ 00€™€™ LS   dan   107o 44€™ 300€™€™ BT dengan ketinggiannya adalah 2665 m di atas permukaan laut atau 1950 m di atas daratan kota Garut.\n",
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
                                          "Pendakian dimulai dari titik awal pendakian yakni di Camp David. Camp David disebut juga Pos 1 oleh pendaki setelah dilakukan pengecekan kelengkapan administrasi oleh relawan-relawan dari sekitar Gunung Papandayan, di Kabupaten Garut, Jawa Barat. Dari Pos Camp David, pendakian akan dimulai dengan medan dengan batuan belerang dan beku.Sekitar lima menit melewati medan yang berbatu dan di kanan kiri pepohonan, pendaki akan langsung memasuki medan yang terbuka dan bisa melihat aktivitas kawah-kawah Gunung Papandayan. Perjalanan menuju titik peristirahatan di Pos Puncak Kawah akan menempuh sekitar 30 menit di tengah medan yang tak terlindungi oleh pepohonan.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Papandayan                                 ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Kawah Papandayan\nMerupakan komplek gunung berapi yang masih aktif seluas 10 Ha. Pada komplek kawah terdapat lubang-lubang magma yang besar maupun kecil, dari lubang-lubang tersebut keluar asap/uap air hingga menimbulkan berbagai macam suara yang unik.\n2.	Blok Pondok Saladah\nMerupakan areal padang rumput seluas 8 Ha, dengan ketinggian 2.288 meter di atas permukaan laut. Di daerah ini mengalir sungai Cisaladah yang airnya mengalir sepanjang tahun. Lokasi ini sangat cocok untuk tempat berkemah.\n3.	Blok Sumber Air Panas\nLetaknya di perbatasan Blok Cigenah, sumber air panas ini mengandung belerang dan berhasiat dalam penyembuhan penyakit kulit terutama gatal-gatal. Secara keseluruhan kawasan ini memiliki panorama alam yang indah dengan lingkungan yang relatif masih utuh dan alami yang ditunjang dengan kesejukan udara.\n",
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
                                          "Terletak di Kabupaten Garut, Jawa Barat tepatnya di Kecamatan Cisurupan. Gunung dengan ketinggian 2665 meter di atas permukaan laut itu terletak sekitar 70 km sebelah tenggara Kota Bandung.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/6CBNrWiUzdYyWrWo8');
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
