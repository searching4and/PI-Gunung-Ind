import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Slamet extends StatelessWidget {
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
                                          "Gunung Slamet",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/slamet.jpg",
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
                                          "Sebagaimana gunung api lainnya di Pulau Jawa, Gunung Slamet terbentuk akibat subduksi Lempeng Indo-Australia pada Lempeng Eurasia di selatan Pulau Jawa. Retakan pada lempeng membuka jalur lava ke permukaan. Catatan letusan diketahui sejak abad ke-19. Gunung ini aktif dan sering mengalami erupsi skala kecil. Aktivitas terakhir adalah pada bulan Mei 2009 dan sampai Juni masih terus mengeluarkan lava pijar. Sebelumnya ia tercatat meletus pada tahun 1999.Maret 2014 Gunung Slamet menunjukkan aktifitas dan statusnya menjadi Waspada. Berdasarkan data PVMBG, aktivitas vukanik Gunung Slamet masih fluktuatif. Setelah sempat terjadi gempa letusan hingga 171 kali pada Jumat 14 Maret 2014 dari pukul 00.00-12.00 WIB, pada durasi waktu yang sama, tercatat sebanyak 57 kali gempa letusan. Tercatat pula 51 kali embusan. Pemantauan visual, embusan asap putih tebal masih keluar dari kawah gunung ke arah timur hingga setinggi 1 km.Sejarawan Belanda, J. Noorduyn berteori bahwa nama 'Slamet' adalah relatif baru, yaitu setelah masuknya Islam ke Jawa (kata itu merupakan pinjaman dari bahasa Arab). Ia mengemukakan pendapat bahwa yang disebut sebagai Gunung Agung dalam naskah berbahasa Sunda mengenai petualangan Bujangga Manik adalah Gunung Slamet, berdasarkan pemaparan lokasi yang disebutkan.\n",
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
                                          "Memiliki ketinggian 3.428 m (11.247 kaki) dan Koordinat  7°14′30″LS,109°12′30″BT.\n",
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
                                          "Jalur pendakian standar adalah dari Blambangan, Desa Kutabawa, Kecamatan Karangreja, Purbalingga. Jalur populer lain adalah dari Baturraden dan dari Desa Gambuhan, Desa Jurangmangu dan Desa Gunungsari di Kabupaten Pemalang. Selain itu ada pula jalur yang baru saja diresmikan tahun 2013 lalu, yaitu jalur Dhipajaya yang terletak di Kabupaten Pemalang.Pendakian Gunung Slamet dikenal cukup sulit karena hampir di sepanjang rute pendakian tidak ditemukan air. Pendaki disarankan untuk membawa persediaan air yang cukup dari bawah. Faktor penyulit lain adalah kabut. Kabut di Gunung Slamet sangat mudah berubah-ubah dan pekat.Jalur pendakian lainnya adalah melalui objek wisata pemandian air panas Guci, Kabupaten Tegal. Meskipun terjal, rute ini menyajikan pemandangan yang paling baik. Kawasan Guci dapat ditempuh dari Slawi menuju daerah Tuwel melewati Lebaksiu.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Slamet                                           ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Baturaden\nDi kawasan wisata ini pengunjung bisa menikmati keindahan alam yang masih sangat asri dengan hawa pegunungan yang sejuk dan menenangkan.\n2.	Curug Gede\nDengan ketinggian air terjun mencapai kurang lebih 50 meter, Cururg Gede disebut sebagai curug yang terindah dibandingkan dengan curug lainnya yang berada di kawasan ini.\n3.	Pemandian Air Panas Guci\nMasih di kaki Gunung Slamet, tepatnya di sisi sebelah utara terdapat objek wisata alam yang cukup terkenal yaitu Pemandian Air Panas Guci yang terletak di Desa Guci, Kecamatan Bumijawa, Kabupaten Tegal.\n",
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
                                          "Sebuah gunung berapi kerucut yang terdapat di Pulau Jawa, Indonesia. Gunung Slamet terletak di antara 5 kabupaten, yaitu Kabupaten Brebes, Kabupaten Banyumas, Kabupaten Purbalingga, Kabupaten Tegal, dan Kabupaten Pemalang, Provinsi Jawa Tengah. Gunung Slamet merupakan gunung tertinggi di Jawa Tengah serta kedua tertinggi di Pulau Jawa setelah Gunung Semeru. Kawah IV merupakan kawah terakhir yang masih aktif sampai sekarang, dan terakhir aktif hingga pada level siaga medio-2009.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/H76SoDTdo6SFhB758');
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
