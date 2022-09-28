import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Merbabu extends StatelessWidget {
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
                                          "Gunung Merbabu",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/merbabu.jpg",
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
                                          "Cerita asal muasal Gunung Merbabu yang berada di perbatasan Kabupaten Magelang, Kabupaten Boyolali dan Kota Salatiga. Nama Merbabu sendiri berasal dari kata “maharu = meru” (gunung) dan “abu” (abu) yang berarti gunung yang berwarna abu-abu karena pada saat meletus seluruh permukaan tanahnya tertutup oleh material abu vulkanik dan berwarna abu-abu.Asal usul nama Merbabu, terdapat versi yang beredar di kalangan Keraton Mataram. Konon, di bumi telah berdiri beberapa kerajaan yang saling berperang. Salah satu kerajaan itu, yakni Mamenang, merupakan kerajaan pemenangnya. Kerajaan itu berada di bawah pimpinan Maharaja Kusumawicitra.Waktu itu Resi Sengkala atau Jaka Sengkala atau Jitsaka atau umum menyebutnya Ajisaka — telah memberikan nama-nama gunung di seluruh Jawa. Sebelum datang ke Pulau Jawa, sang resi adalah raja yang bertahta di Kerajaan Sumatri. Karena kemenangan Maharaja Kusumawicitra itu, maka segala sesuatu yang berada di bawah kekuasaannya diganti namanya disesuaikan dengan kebudayaan Mamenang. Nama Gunung Candrageni, yang semua diberi nama Ajisaka, lantas Kusumawicitra menggantinya menjadi Gunung Merapi. Begitu pula dengan Gunung Candramuka, diubah menjadi “Gunung Merbabu“. Sehingga kita mengenal nama Gunung Merapi dan Merbabu.Dalam naskah-naskah masa pra-Islam ada seorang sakti dari tataran Sunda bernama Bujangga Manik yang seorang pengelana yang hidup pada tahun 1500-an dan pernah singgah dan membuat pertapaan di lereng Merbabu. Bujangga Manik menyebut Gunung Merbabu sebagai Gunung Damalung atau Gunung Pam(a)rihan. Perjalanan Bujangga Manik di lereng G. Merbabu tecatat dalam naskah catatan Belanda, namun perlu dilakukan konfirmasi dan penelitian lebih lanjut (Rsi Hindu-Sunda karya KRT. Kusumotanoyo yang dimuat dalam buku Gema Yubileum HIK, Yogyakarta, 1987).\n",
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
                                          "Gunung Merbabu adalah gunung api yang bertipe Strato (lihat Gunung Berapi) yang terletak secara geografis pada 7,5° LS dan 110,4° BT. Gunung Merbabu dikenal melalui naskah-naskah masa pra-Islam sebagai Gunung Damalung atau Gunung Pam(a)rihan.Di lerengnya pernah terdapat pertapaan terkenal dan pernah disinggahi oleh Bujangga Manik pada abad ke-15. Menurut etimologi, 'merbabu' berasal dari gabungan kata 'meru' (gunung) dan 'abu' (abu). Nama ini baru muncul pada catatan-catatan Belanda.Gunung ini pernah meletus pada tahun 1560 dan 1797. Dilaporkan juga pada tahun 1570 pernah meletus, akan tetapi belum dilakukan konfirmasi dan penelitian lebih lanjut. Puncak gunung Merbabu berada pada ketinggian 3.145 meter di atas permukaan air laut.\n",
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
                                          "1.	Jalur Kopeng Thekelan\nDari Jakarta bisa naik kereta api atau bus ke Semarang, Yogyakarta, atau Solo. Dilanjutkan dengan bus jurusan Solo-Semarang turun di kota Salatiga, dilanjutkan dengan bus kecil ke Kopeng. Dari Yogyakarta naik bus ke Magelang, dilanjutkan dengan bus kecil ke Kopeng. Dari kopeng terdapat banyak jalur menuju ke Puncak, namun lebih baik melewati desa tekelan karena terdapat Pos yang dapat memberikan informasi maupun berbagai bantuan yang diperlukan. Pos Tekelan dapat ditempuh melalui bumi perkemahan Umbul Songo.\n2.	Jalur Wekas\nTim Skrekanek yang berjumlah lima orang (Steve, Sigit, Bowo, Hari, Bayu) pertengahan Maret 2005 melakukan pendakian Gunung Merbabu melalui Jalur Wekas. Untuk menuju ke Desa Wekas kita harus naik mobil Jurusan Kopeng - Magelang turun di Kaponan, yakni sekitar 9 Km dari Kopeng, tepatnya di depan gapura Desa Wekas. Dari Kaponan pendaki berjalan kaki melewati jalanan berbatu sejauh sekitar 3 Km menuju pos Pendakian.\n3.	Jalur Kopeng Cunthel\nTim Skrekanek yang berjumlah lima orang (Maulana, Steve, Iwi, Ardy, Sigit) pertengahan September 2004 melakukan pendakian Gunung Merbabu berangkat melalui jalur Kopeng - Cunthel, dan turun mengambil jalur Kopeng Thekelan.\n4.	Jalur Selo\nJalur pendakian Merbabu Via Selo saat ini menjadi jalur yang relatif lebih ramai dari jalur yang lainnya. Pemandangan yang indah dengan sabana yang menghampar membuat perjalanan menjadi lebih menyenangkan. Ditambah lagi dari jalur ini tetangga dekat gunung merbabu yaitu Merapi bisa terlihat dengan jelas.\n",
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
                                          "1.	Ketep Pass\nKetep Pass berada di sebuah bukit diantara gunung Merapi dan Merbabu. Tempat ini menawarkan keindahan panorama dari ketinggian sekitar 1200 diatas permukaan laut.\n2.  Agrowisata Stroberi Banyuroto\nKebun stroberi ini berada di Desa Banyuroto, Kecamatan Sawangan, Kabupaten Magelang. Ki kawasan ini terdapat banyak pilihan kebun buah strawberry milik warga sekitar yang dapat dikunjungi.\n",
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
                                          "Secara administratif gunung ini berada di wilayah Kabupaten Magelang di lereng sebelah barat dan Kabupaten Boyolali di lereng sebelah timur dan selatan, Kabupaten Semarang di lereng sebelah utara, Provinsi Jawa Tengah.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/vXLuR5Gn1KMmo2JW7');
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
