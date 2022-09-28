import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Bromo extends StatelessWidget {
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
                                          "Gunung Bromo",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/bromo.jpg",
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
                                          "Konon pada jaman dahulu kala ketika kerajaan majapahit mengalami serangan dari berbagai daerah, penduduk pribumi kebingungan untuk mencari tempat tinggal. Hingga pada akhirnya mereka pergi dan terpisah menjadi 2 bagian. Pertama menuju ke gunung Bromo, dan yang kedua menuju ke pulau Bali. Ke dua tempat ini sampai sekarang mempunyai 2 kesamaan yaitu tetap sama-sama menganut kepercayaan beragama Hindu.Pada area gunung Bromo, terdapat sebuah suku yang bernama suku Tengger. Nama Tengger tersebut berasal dari Legenda Roro Anteng juga Joko Seger yang mereka yakini sebagai asal usul nama Tengger itu. “Teng” akhiran nama Roro An-”teng” dan “GER” akhiran nama dari Joko Se-”ger”. Sehingga Bromo sendiri masih mereka percaya sebagai gunung suci. Mereka menyebutnya sebagai Gunung Brahma. orang Jawa kemudian menyebutnya Gunung Bromo.\n",
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
                                          "Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan koordinat 7° 56' 30' LS dan 112° 57' BT.                                                                                                                                                      \n",
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
                                          "1.	Arah Pasuruan\nJalur pertama bisa melalui pintu barat dari arah Pasuruan. Masuk dari Desa Tosari menuju lautan pasir.Namun medan ini tidak bisa dilalui oleh kendaraan roda empat biasa, karena jalurnya berupa turunan dari tanjakan curam.Untuk menuju lautan pasir, turis harus menyewa mobil jeep yang disediakan oleh pengelola wisata.Atau bisa juga berjalan kaki kalau punya banyak waktu dan tubuh sedang fit.\n2.	 Desa Cemoro Lawang\nJalur kedua melalui pintu utara, dari arah sebelum masuk Probolinggo. Lewat daerah Tongas, menuju Desa Cemoro Lawang.Sebelum turun menuju lautan pasir tidaklah terlalu berat, karena lerengnya tidak terlalu curam. Bahkan sepeda motor dapat melaluinya.\n3.	Malang\nJalur ketiga melalui kota Malang, masuk melalui kota Tumpang lalu ke Pronojiwo. Jalur ini disebut sangat indah karena melewati hutan rimbun nan hijau.Bila lurus ke arah selatan memasuki Ranu Pane (ke arah Gunung Semeru) dan ke arah utara memasuki lautan pasir Bromo yang berada di punggung selatan Bromo\n4.	 Lautan Pasir\nJalur terakhir mengitari Gunung Bromo melewati lautan pasir selama kurang lebih tiga jam. Jalurnya tidak terlalu curam dan dapat dilalui sepeda motor. Namun jarang dilewati dan tidak ada satupun persinggahan maupun rumah penduduk. Tetapi dari jalur ini bisa sekaligus menikmati padang rumput sabana dan bunga yang sangat luas di balik Gunung Bromo. Sebaiknya jangan melalui jalur ini pada malam hari atau saat cuaca sedang berkabut.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Bromo                                                     ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "•	Pananjakan 1 \nBerada di ketinggian 2.770Mdpl, adalah tempat yang sangat strategis untuk menyaksikan matahari terbit yang dikenal dengan sebutan Bromo Golden Sunrise. Untuk mencapai wiew point Pananjakan 1 kita harus menggunakan kendaraan Jeep yang memang satu-satunya kendaraan yang beroperasi untuk mengantarkan para wisatawan menuju tempat-tempat wisata utama di sekitar Gunung bromo.\n•	Gunung Widodaren \nBerada tidak begitu jauh dari lokasi Gunung Bromo dan masih bersebelahan dengan Gunung Batok yang masih berada di satu kawasan Taman Nasional Bromo Tengger Semeru. Objek Wisata Widodaren memiliki puncak ketinggian 2.614 meter diatas permukaan laut.\n•	Bukit Cinta Bromo atau Love Hill \nMerupakan obyek wisata yang masih tergolong baru yang dihadirkan untuk melengkapi keseruan wisata di Gunung bromo. Sebagian wisatawan berpendapat bahwa Bukit Cinta adalah View Point Golden Sunrise Gunung Bromo yang tidak kalah bagusnya dengan spot menyaksikan sunrise yang lain. Itu sebabnya apabila Point Pananjakan 1 dirasa sangat ramai dipadati oleh para wisatawan, sebagian pengunjung memutuskan untuk beralih ke Bukit Cinta Bromo.\n•	Pasir Berbisik Bromo\nAdalah lautan hamparan pasir yang membentang luas dikawasan wisata Taman Nasional Bromo Tengger Semeru. Padang pasir yang memiliki luas sebesar 5.920 hektar ini menjadi pemandangan alam yang tidak didapatkan di sekitar pegunungan lain yang ada di Indonesia. Bahkan Taman Nasional Tengger Semeru dinobatkan sebagai satu-satunya kawasan pegunungan satu-satunya yang memiliki lautan pasir yang luas di Nusantara.\n•	Bukit Teletubies Gunung Bromo\n Bagi anda yang melewati masa kanak-kanak di era tahun 1997 hingga 2001 akan sangat familiar dengan nama Teletubies. Film cerita anak-anak dengan tokohnya yang dikenal bernama Tinky Winky, Dipsy, Laa Laa, Po dan terkenal dengan kalimat 'berpelukaaan'. Dalam cerita tersebut mereka tinggal disebuah bukit indah dibalut tumbuhan hijau di seluruh permukaan nya. Pemandingan bukit yang hijau seperti ini bisa kita dapati di kawasan Gunung Bromo, bukan hanya dalam cerita atau Dongeng belaka.\n",
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
                                          "Terdapat di perbatasan 4 kabupaten di Jawa Timur. Yaitu, kabupaten Malang, kabupaten Pasuruan, kabupaten Probolinggo, dan terakhir adalah kabupaten Lumajang. Namun, jalur terbaik bagi wisatawan yang berasal dari luar kota adalah melalui rute Kabupaten Probolinggo, selain akasesnya mudah dekat dengan Terminal Bayu ANgga Probolinggo dan Stasiun Kereta Api Probolinggo.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/hmoTtem3DUL9xtzt5');
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
