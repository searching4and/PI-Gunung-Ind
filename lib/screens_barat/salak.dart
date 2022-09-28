import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Salak extends StatelessWidget {
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
                                          "Gunung Salak",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/salak.jpg",
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
                                          "Pascajatuhnya pesawat Sukhoi Superjet 100, Gunung Salak kembali menjadi buah bibir. Misteri di gunung yang membelah wilayah Bogor dan Sukabumi mulai kembali diperbincangkan.Gunung Salak selama ini memang dikenal angker, baik oleh pendaki maupun bagi kalangan penerbang. Tak sedikit para pendaki yang tersesat, hilang dan meninggal di Gunung Salak. Begitu juga dengan dunia penerbangan, setidaknya tujuh pesawat jatuh di lereng gunung yang memiliki dua puncak ini.Meski sering diperbincangkan, asal muasal penamaan Gunung Salak masih simpang siur hingga saat ini. Salah satu versi menyebut Gunung Salak tidak memiliki hubungan dengan buah salak. Gunung Salak dalam versi ini diambil dari bahasa sansekerta 'Salaka' yang berarti perak. Maka Gunung Salak bermakna 'Gunung Perak'.Versi lain menyebut di lereng gunung tersebut pernah berdiri sebuah kerajaan bernama Salakanagara pada abad IV dan V Masehi. Nama Gunung Salak pun diduga berasal dari kata depan kerajaan tersebut.Menurut sumber sejarah, kerajaan Salakanagara dipimpin oleh seorang raja dengan gelar Raja Dewawarman I-VIII. Terungkapnya kerajaan Salakanagara bermula dari penemuan tulisan Raja Cirebon yang berkuasa tahun 1617 Wangsakerta, yang ditemukan pada abad ke-19 Masehi. Dari sinilah kemudian diketahui, jika kerajaan Hindu pertama di Pasundan bukan Tarumanagara, tapi Salakanagara. Namun versi ini pun belum bisa dibuktikan kebenarannya. Versi lain dan yang beredar di warga di lereng gunung tersebut adalah adanya buah salak raksasa. Konon, penamaan Gunung Salak berasal dari penemuan buah salak besar.'Kata orang tua dulu begitu, katanya ada salak besar di sana, makanya dikasih nama Gunung Salak,' ujar warga Cidahu, Sukabumi, Husni kepada merdeka.com.Belum jelas soal penamaan dan hubungan gunung yang sering terjadi kecelakaan pesawat terbang ini. Namun di gunung tersebut terdapat banyak sekali petilasan atau tempat bersemedi para raja dan pengikutnya.Petilasan suci itu tersebar di berbagai titik. Seperti petilasan milik raja Pajajaran, Prabu Sri Baduga Maharaja atau Prabu Siliwangi di kaki Gunung Salak di daerah Bogor dengan total mencapai puluhan lokasi.\n",
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
                                          "Geoposisi puncak tertinggi gunung ini ialah 6°43' LS dan 106°44' BT dan dinamakan Puncak Salak I dengan ketinggian puncak 2.211 m dari permukaan laut (dpl.).\n",
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
                                          "Gunung Salak, meskipun tergolong sebagai gunung yang rendah, akan tetapi memiliki tingkat kesulitan cukup tinggi, baik karena karakteristik vegetasi maupun medannya.Gunung Salak dapat didaki dari beberapa jalur. Puncak yang paling sering didaki adalah Puncak Salak II dan Salak I.Jalur yang paling ramai adalah melalui Curugnangka, dari sisi utara gunung. Melalui jalur ini, orang akan sampai pada Puncak Salak II.Puncak Salak I biasanya didaki dari arah timur, yakni Cimelati, dekat Cicurug, Sukabumi. Puncak Salak I dapat juga dicapai dari Puncak Salak II, dengan banyak kesulitan, dari Sukamantri, Ciapus. Di Puncak Salak I terdapat petilasan (berwujud kuburan) yang disebut-sebut sebagai petilasan 'Embah Salak'.Jalur lain adalah 'jalan belakang' lewat Cidahu, Sukabumi, atau dari Kawah Ratu, dekat Gunung Bunder.Gunung Salak populer sebagai ajang tempat pendidikan bagi klub-klub pecinta alam, terutama sekali daerah punggungan Salak II. Ini dikarenakan medan hutannya yang rapat dan juga jarang pendaki yang mengunjungi gunung ini. Juga memiliki jalur yang cukup sulit bagi para pendaki pemula dikarenakan jalur yang dilewati jarang ditemukan cadangan air kecuali di Pos I jalur pendakian Kawah Ratu. Namun, di puncak Salak I ditemukan kubangan air hujan.Cimelati Di jalur ini masuk dari desa Cibuntu, Jika melewati track ini kita kan bertemu sebuah Vila besar sebelum mencapai pos/shelter 1 dan di sini juga terdapat beberapa air terjun, Di jalur ini banyak air yang cukup, dan tempat terakhir kita mengambil air sekitar 5 Meter kurang lebih dari pos/shelter 3 karna ada saluran air milik warga setempat yang di sebut juga dengan Pos/shelter Air, Setelah pos/shelter ini kita tidak bisa menemukan air maka bawalah cadangan air setelah kita melewati pos/shelter ini. jika anda melewati ini akan melewati 7 pos/shelter yang mana akan tertanda/di beri nama di setiap pos/shelter. dan pos yang ke 7 adalah puncak salak I.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Salak                                       ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "1.	Air terjun Cigamea \nTerletak di Desa Gunung Sari, Kecamatan Pamijahan, Kabupaten Bogor, Jawa Barat. Untuk mencapai air terjun ini sahabat Direktori Wisata Indonesia harus menuruni tebing sedalam 500 meter dengan melalui anak tangga yang telah tertata rapih di lokasi.\n2.	Pura Agung Jagatkarta\nBerlokasi di Desa Taman Sari, Lereng Gunung Salak, Bogor. Konon informasi yang Direktori Wisata Indonesia terima di lokasi, pura ini merupakan pura terbesar di luar Pulau Bali yang di bagun pada tahun 1994.\n3.	Taman nasional Gunung Halimun Gunung Salak\nMemilik spot wisata menarik yang wajib sahabat Direkori Wisata indonesia kunjungi saat berlibur di Bogor. Di tempat wisata lereng Gunung Salak Bogor ini terdapat deretan pohon pinus asri yang membentang luas.\n4.	Kampung Budaya Sindang Barang\nJaraknya tidak terlalu jauh dari Kota Bogor, dan menurut informasi yang Direktori Wisata Indonesia terima di lokasi, kampung ini merupakan sebagai replika kampung adat Sindang Barang yang kini telah punah.\n",
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
                                          "Merupakan kompleks gunung berapi yang terletak di selatan Jakarta, di Pulau Jawa. Kawasan rangkaian gunung ini termasuk ke dalam wilayah Kabupaten Sukabumi dan Kabupaten Bogor, Jawa Barat.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/6oAgccMhahcoLn9L7');
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
