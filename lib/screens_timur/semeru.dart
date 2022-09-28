import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Semeru extends StatelessWidget {
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
                                          "Gunung Semeru",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/semeru.jpg",
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
                                          "Pulau jawa merupakan wilayah yang memiliki berbagai macam kisah budaya yang berasal dari kebudayaan Hindu di Nusantara. pengaruh besar Majapahit membuat kebudayaan Hindu berkembang pesat di Jawa. Salah satu hasil pengaruh itu adalah kisah legenda tentang Gunung Semeru yang diceritakan bahwa gunung ini merupakan paku bumi untuk membuat pulau jawa menancap di lautan.Sebagai gunung tertinggi di pulau jawa dengan ketinggian 3.676 meter di atas permukaan laut (mdpl), Gunung Semeru merupakan salah satu gunung aktif yang memiliki kisah tertua bahkan memiliki hubungan dengan kebudayaan Hindu di India. Gunung ini memiliki puncak bernama Mahameru yang berarti Gunung Tertinggi.Diceritakan dalam Tantu Pagelaran, bahwa Pulau Jawa mulanya adalah sebuah pulau yang terombang ambing di tengah lautan. Pulau ini kemudian oleh dewa Shiva yang juga dikenal Batara Guru menginginkan agar pulau Jawa dihuni oleh manusia. Namun karena pulau masih belum menancap di bumi, pulau ini tidak bisa dihuni. Sehingga Dewa Brahma dan Dewa Wisnu mengambil Mahameru di Tanah Jambudvipa (India) untuk di tancapkan di Jawa.Untuk memindahkan Mahameru, Dewa Wisnu kemudian menjelma menjadi seekor kura-kura raksasa dan menggendong gunung itu di punggungnya. Sementara Dewa Brahma menjelma menjadi ular panjang yang membelitkan tubuhnya pada gunung dan badan kura-kura. Mahameru kemudian di bawa ke Jawa dan ditancapkan di Jawa tepatnya di daerah Kabupaten Malang dan Kabupaten Lumajang di era modern. Gunung yang dipercaya sebagai paku bumi itulah yang kemudian disebut dengan Gunung Semeru hingga saat ini.Hal menarik lainnya dari Mahameru adalah, gunung yang memiliki kawah bernama Jonggring Saloka ini dipercaya merupakan bapak dari gunung tertinggi di Bali, Gunung Agung dan juga gunung teringgi di Nusa Tenggara, Gunung Rinjani. Ketiganya sampai saat ini merupakan gunung aktif yang terus memuntahkan material vulkanis untuk menyuburkan wilayah-wilayah di sekitarnya.\n",
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
                                          "Gunung Semeru merupakan gunung tertinggi di Pulau Jawa, dengan puncaknya Mahameru, 3.676 meter dari permukaan laut (mdpl) dan Posisi geografis Semeru terletak antara 8°06' LS dan 112°55' BT.\n",
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
                                          "•	Ranu Pani – Landengan Dowo : 3 km / 1.5 jam\n•	Landengan Dowo – Watu Rejeng : 3 km / 1.5 jam\n•	Watu Rejeng – Ranu Kumbolo : 4.5  km / 2 jam\n•	Ranu Kumbolo – Oro Oro Ombo : 1 km / 30min\n•	Oro-Oro Ombo – Cemoro Kandang : 1.5 km / 30min\n•	Cemoro Kandang – Jambangan : 3 km / 30min\n•	Jambangan – Kalimati : 2 km / 30min\n•	Kalimati – Arcopodo : 1.2 km / 2.5 jam\n•	Arcopodo – Summit : 1.5km / 4 jam\n                                                                                                                                                                                                        ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Semeru                                                     ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Ranu Kumbolo\nRanu Kumbolo merupakan sebuah danau yang terletak di dalam Taman Nasional Bromo Tengger Semeru (TNBTS). Ranu Kumbolo juga merupakan danau yang termasuk dalam bagian rute termudah yang berasal dari Ranu Pani menuju puncak Gunung Semeru.\n2.	Ranu Regulo\nDanau ini juga masih termasuk ke dalam kawasan Taman Nasional Bromo Tengger Semeru (TNBTS). Danau ini tidak jauh dari Ranu Pani dan memang letaknya agak tersembunyi.\n3.	Air Terjun Coban Sewu\nAir terjun Coban Sewu termasuk salah satu tempat wisata di kaki gunung Semeru yang bisa kamu kunjungi. Air terjun ini menawarkan keindahan alam dan pesona air terjun yang eksotis.\n",
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
                                          "Gunung Semeru secara administratif termasuk dalam wilayah dua kabupaten, yakni Kabupaten Malang dan Kabupaten Lumajang, Provinsi Jawa Timur. Gunung ini termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/mW2YfnH2yjFyYC8m7');
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
