import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Prau extends StatelessWidget {
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
                                          "Gunung Prau",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/prau.jpg",
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
                                          "Asal-usul nama Gunung Prau juga tak lepas dari mitos yang mengatakan bahwa di dalam gunung ini terdapat sumber air yang begitu melimpah ruah. Maka banyak yang meyakini hal ini, karena seperti yang Kamu tahu bahwa di kawasan dataran tinggi Dieng terdapat begitu banyak telaga dan sumber mata air.Mitos lain mengatakan bahwa nama lain dari Gunung Prau adalah Gunung Mayit. Dalam bahasa Indonesia mayit berarti mayat. Konon ini karena bentuk Gunung Prau yang jika dilihat dari jauh menyerupai pocong yang sedang dalam posisi tidur atau rebahan. Tak ada yang tahu tentang kebenaran mitos dan cerita tersebut.\n",
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
                                          "2.565 mdpl terletak di kawasan Dataran Tinggi Dieng, Jawa Tengah, Indonesia. Gunung Prahu terletak pada koordinat  7°11′13″S 109°55′22″E.\n",
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
                                          "1.	Jalur Pranten, Kecamatan Bawang, Kabupaten Batang\n2.	Jalur Kenjuran, Kendal.\n3.	Jalur Patak Banteng, Wonosobo\n                                                                                                                                                                 ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Merbabu                                                 ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Kawah Sikidang\nKawah Sikidang Dieng termasuk obyek wisata yang berada diskitar Dieng yang wajib dikunjungi. Terletak di Desa Dieng Kulon, Kecamatan Batur, Dieng Indonesia, sekitar 4 km dari Gunung Prau, memiliki kawah yang masih menujukkan aktivitas vulkanik  menjadi daya tarik tersendiri. Keberadaan kawah yang terletak  ditanah datar mumudahkan kamu mengakses ke kawah tersebut.\n2.  Telaga Warna Dieng\nDanau atau telaga ini tersembunyi diantara perbukitan diketinggian  lebih dari 2.000 meter di atas permukaan laut. Kenapa disebut Telaga Warna karena kandungan sulfur yang tinggi sehingga ketika terkena sinar matahari danau ini akan memantulkan warna yang beragam.\n3.  Candi Arjuna\nCandi Arjuna adalah salah satu candi yang berada di Komplek Percandian Arjuna. Terdapat 5 bangunan candi didalamnya yakni Candi Arjuna, Candi Semar, Candi Srikandi, Candi Puntadewa, dan Candi Sembadra.\n",
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
                                          "Terletak di kawasan Dataran Tinggi Dieng, Jawa Tengah, Indonesia. Gunung Prahu merupakan tapal batas antara tiga kabupaten yaitu Kabupaten Batang, Kabupaten Kendal dan Kabupaten Wonosobo.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/pmU1NaD7uVh5CRTq8');
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
