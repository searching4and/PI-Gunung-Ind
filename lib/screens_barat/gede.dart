import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Gede extends StatelessWidget {
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
                                          "Gunung Gede",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/gede.jpg",
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
                                          "Gunung Gede Pangrango ditetapkan sebagai salah satu dari 5 taman nasional pertama di Indonesia oleh pemerintah Indonesia melalui Surat Keputusan Menteri Pertanian tahun 1980. Sejarah awal konservasi di kawasan ini hanya sedikit diketahui, walaupun hutan dan gunung merupakan bagian dari legenda-legenda di tanah Sunda. Tampaknya ada jalur sejarah dari kota tua Cianjur sampai Bogor melalui Cipanas. Bagian lereng pegunungan yang rendah, tidak rata dan berteras-teras dulunya digunakan untuk pertanian dengan pergiliran tanaman.Dikenalkannya tanaman teh sebagai tanaman perkebunan memberikan dampak nyata bagi kawasan ini. Teh varietas Jepang telah ditanam sejak tahun 1728, dan perkebunan ini terbentang mulai dari Ciawi sampai Cikopo di tahun 1835. Kemudian, tahun 1878, teh Assam diperkenalkan dan tumbuh dengan sangat baik, menyebabkan ekonomi dan kondisi lingkungan di kampung-kampung dilereng pegunungan berubah.Sejarah panjang kegiatan konservasi dan penelitian dimulai sejak tahun 1830 dengan terbentuknya kebun raya kecil di dekat Istana Gubernur Jenderal Kolonial Belanda di Cipanas, dan kemudian kebun raya kecil ini diperluas sehingga menjadi Kebun Raya Cibodas sekarang ini. Pemerintahan Kolonial Belanda sangat antusias untuk meningkatkan tanaman-tanaman penting dan bernilai ekonomis serta perkebunan komersial, sehingga dibanguna suatu stasiun penelitian dan percobaan pertanian di dataran tinggi ini. Tidak lama setelah itu, botanis-botanis lokal kemudian mulai tertarik untuk meneliti keanekaragaman tumbuhan disekitar pegunungan ini. Abad 19 merupakan masa-masa terbesar dan penting dalam sejarah koleksi tumbuhan , dan Cibodas menjadi salah satu lokal koleksi tumbuhan saat itu.Tahun 1889, areal hutan antara Kebun Raya Cibodas dan Air Panas ditetapkan sebagai Cagar Alam. Setelah tahun 1919, suatu kawasan cagar alam ditetapkan. Komitmen utama dimulai tahun 1978, ketika kawasan seluas 14,000 hektar, yang terdiri dari 2 puncak utama dan lerengnya yang luas, ditetapkan sebagai Cagar Biosfer Gunung Gede Pangrango. Akhirnya, tahun 1980, seluruh kawasan terpisah-pisah ini digabung menjadi Taman Nasional Gunung Gede Pangrango.\n",
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
                                          "Gunung ini berada di dua wilayah kabupaten yaitu Kabupaten Cianjur dan Sukabumi, dengan ketinggian 1.000 - 2.958 m. dpl, dan berada pada lintang 106°51' - 107°02' BT dan 64°1' - 65°1 LS. Suhu rata-rata di puncak gunung Gede 18 °C dan di malam hari suhu puncak berkisar 5 °C, dengan curah hujan rata-rata 3.600 mm/tahun.\n",
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
                                          "Terdapat tiga jalur pendakian yang sering digunakan oleh para pendaki untuk menuju gunung Gede Pangrango. Jalur pendakian gunung gede pangrango ini antara lain via Cibodas, Gunung Putri, dan Salabintana. Ke 3 jalur ini merupakan jalur resmi pendakian, dari sekian banyak jalur yang dapat diakses.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata di Taman Nasional Gunung Gede Pangrango         ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Bumi Perkemahan Mandalawangi\nLetaknya berada di komplek Balai Besar Taman Nasional Gunung Gede Pangrango di sebelah utara. Layaknya sebuah bumi perkemahan, tempat ini menjadi lokasi favorit untuk melakukan kegiatan camping atau perkemahan.\n2.	Canopy Trail\n Letaknya tidak jauh dari pintu masuk jalur pendakian gunung Gede Pangrango Cibodas. Wahana ini berupa jembatan gantung yang membentang sepanjang 130 m dengan tiang penyangga berupa 4 pohon Rasamala (altingia excelsa) dengan diameter 1,2 meter dan tinggi canopy trail berkisar 45 meter. Sensasi wahana ini akan berujung pada Curug Ciwalen yang konon katanya bisa membuat awet muda.\n3.	Telaga Biru\nDanau kecil berukuran lima hektare (1.575 meter dpl.) terletak 1,5 km dari pintu masuk jalur pendakian gunung Gede Pangrango Cibodas. Danau ini selalu tampak biru diterpa sinar matahari, karena ditutupi oleh ganggang biru.\n4.	Air terjun Cibeureum\nAir terjun yang mempunyai ketinggian sekitar 50 meter terletak sekitar 2,8 km dari Cibodas. Di sekitar air terjun tersebut dapat melihat sejenis lumut merah yang endemik di Jawa Barat.\n5.	Kandang Batu dan Kandang Badak\nUntuk kegiatan berkemah dan pengamatan tumbuhan/satwa. Berada pada ketinggian 2.220 m. dpl dengan jarak 7,8 km atau 3,5 jam perjalanan dari Cibodas.\n6.	Puncak dan Kawah Gunung Gede\nPanorama berupa pemandangan matahari terbenam/terbit, hamparan kota Cianjur-Sukabumi-Bogor terlihat dengan jelas, atraksi geologi yang menarik dan pengamatan tumbuhan khas sekitar kawah. Di puncak ini terdapat tiga kawah yang masih aktif dalam satu kompleks yaitu kawah Lanang, Ratu dan Wadon. Berada pada ketinggian 2.958 m. dpl dengan jarak 9,7 km atau 5 jam perjalanan dari Cibodas.\n7.	Alun-alun Suryakencana\nDataran seluas 50 hektare yang ditutupi hamparan bunga edelweiss. Berada pada ketinggian 2.750 m. dpl dengan jarak 11,8 km atau 6 jam perjalanan dari Cibodas.\n",
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
                                          "Gunung Gede Pangrango berlokasi di tiga kabupaten, yaitu Kabupaten Bogor, Cianjur, dan Sukabumi. Sementara untuk akses, Gunung Pangrango dapat dilalui lewat jalur Gunung Putri, Cibodas, dan Selabintana. Namun, hanya jalur pendakian via Gunung Putri dan Cibodas yang paling ramai dipilih pendaki untuk menuju puncak Gunung Pangrango.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/H92QwiHw5vfbU4wb9');
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
