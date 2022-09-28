import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Merapi extends StatelessWidget {
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
                                          "Gunung Merapi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/merapi.jpg",
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
                                          "Gunung Merapi merupakan salah satu gunung berapi paling aktif di Jawa, bahkan di Indonesia. Riwayatnya kerap dikait-kaitkan dengan cerita rakyat atau mitologi Jawa yang bahkan masih dipercaya oleh sebagian orang hingga saat ini. Kendati begitu, sejarah Gunung Merapi sebenarnya bukan hanya sekadar legenda. Lereng selatan Gunung Merapi termasuk ke dalam wilayah Kabupaten Sleman, Daerah Istimewa Yogyakarta. Sedangkan lereng lainnya merupakan bagian dari wilayah Provinsi Jawa Tengah, yaitu Magelang (sisi barat), Boyolali (utara dan timur), serta Klaten (tenggara). Ada perbedaan pendapat dari para ahli mengenai pembagian periodesasi sejarah Gunung Merapi. Wirakusumah dan kawan-kawan dalam Geologic Map of Merapi Volcano Central Java (1989) membaginya menjadi dua fase besar, yakni fase Merapi Muda dan fase Merapi Tua. Sedangkan penelitian P. Berthommier berjudul “Volcanological Study of Merapi (Central Java): Tephrostratigraphic and Chronology-Eruptive Products” (1990) menyatakan bahwa periodesasi gunung ini dibagi menjadi empat tahap, yaitu fase pra-Merapi, fase Merapi Tua atau Purba, fase Merapi Pertengahan, serta fase Merapi Baru.Gunung ini berpotensi kebencanaan yang tinggi karena menurut catatan modern mengalami erupsi setiap dua sampai lima tahun sekali dan dikelilingi oleh permukiman yang padat. Sejak tahun 1548, gunung ini sudah meletus sebanyak 68 kali Kota Magelang dan Kota Yogyakarta adalah kota besar terdekat, berjarak kurang dari 30 km dari puncaknya. Di lerengnya masih terdapat permukiman sampai ketinggian 1.700 meter dan hanya berjarak empat kilometer dari puncak. Oleh karena tingkat kepentingannya ini, Merapi menjadi salah satu dari enam belas gunung api dunia yang termasuk dalam proyek Gunung Api Dekade Ini (Decade Volcanoes).\n",
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
                                          "Ketinggian dan Posisi geografis kawasan Gunung Merapi adalah  2.930 mdpl dan koordinat 07°22'33' - 07°52'30' LS dan 110°15'00' - 110°37'30' BT. Sedangkan luas totalnya sekitar 6.410 ha, dengan 5.126,01 ha di wilayah Jawa Tengah dan 1.283,99 ha di Daerah Istimewa Yogyakarta. Kawasan Gunung Merapi tersebut termasuk wilayah kabupaten-kabupaten Magelang, Boyolali dan Klaten di Jawa Tengah, serta Sleman di Yogyakarta.\n",
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
                                          "Gunung Merapi merupakan objek pendakian yang populer. karena gunung ini merupakan gunung yang sangat mempesona. Jalur pendakian yang paling umum dan dekat adalah melalui sisi utara dari Sélo, Kabupaten Boyolali, Jawa Tengah, tepatnya di Desa Plalangan, Selo, Boyolali, Desa ini terletak di antara Gunung Merapi dan Gunung Merbabu. Pendakian melalui Selo memakan waktu sekitar 4-5 jam hingga ke puncak.Jalur populer lain adalah melalui Kaliurang, Kecamatan Pakem, Kabupaten Sleman, Yogyakarta di sisi selatan. Jalur ini lebih terjal dan memakan waktu sekitar 6-7 jam hingga ke puncak. Jalur alternatif yang lain adalah melalui sisi barat laut, dimulai dari Sawangan, Kabupaten Magelang, Jawa Tengah dan melalui sisi tenggara, dari arah Deles, Kecamatan Kemalang, Kabupaten Klaten, Jawa Tengah.\n",
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
                                          "1.	The Lost World Castle \nTerletak di Kepuharjo, Cangkringan, Sleman, Yogyakarta tempat wisata ini menawarkan keindahan alam di lereng Gunung Merapi.\n2.	Jeep Wisata Lava Tour Merapi\nBagi pembaca penyuka wisata petualangan, salah satu aktivitas wisata yang menarik adalah Merapi Lava Tour. Lokasinya di Kaliurang, tepat di kaki Gunung Merapi.\n3.	Stonehenge Merapi \nTempat wisata yang disebut Stonehenge versi lokal ini terletak di Cangkringan, Kabupaten Sleman. Tempat ini menyerupai situs Stonehenge di Inggris.\n4.	Museum Gunung Merapi\n Museum ini terletak di Desa Harjobinangrum, Kecamatan Cangkringan, Kabupaten Sleman. Bentuknya unik mirip kerucut. Kamu bisa melihat pemandangan Gunung Merapi sebagai latar belakang museum yang sudah ada sejak 2009 tersebut.\n",
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
                                          "Berada dalam administrasi Kabupaten Sleman, Daerah Istimewa Yogyakarta, dan sisanya berada dalam wilayah Provinsi Jawa Tengah, yaitu Kabupaten Magelang di sisi barat, Kabupaten Boyolali di sisi utara dan timur, serta Kabupaten Klaten di sisi tenggara. Kawasan hutan di sekitar puncaknya menjadi kawasan Taman Nasional Gunung Merapi sejak tahun 2004.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/YHfTDKNeYrLkHGar8');
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
