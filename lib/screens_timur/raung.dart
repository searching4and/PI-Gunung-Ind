import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Raung extends StatelessWidget {
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
                                          "Gunung Raung",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/raung.jpg",
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
                                          "Gunung Raung adalah sebuah gunung yang besar dan unik dan Gunung Raung merupakan bagian dari kelompok pegunungan Ijen yang terdiri dari beberapa gunung, diantaranya Gunung Suket (2.950mdpl), Gunung Raung (3.332mdpl), Gunung Pendil (2.338), Gunung Rante (2.664), Gunung Merapi (2.800), Gunung Remuk (2.092), dan Kawah Ijen. Keunikan dari Puncak Gunung Raung adalah kalderanya yang sekitar 500 meter dalamnya, selalu berasap dan sering menyemburkan api. Gunung Raung termasuk gunung tua dengan kaldera di puncaknya dan dikitari oleh banyak puncak kecil, menjadikan pemandangannya benar-benar menakjubkan.Selain itu gunung ini juga terletak di paling ujung pulau jawa bahkan keindahan gunung ini dapat kita lihat dari pulau dewata bali, tepatnya ketika kita berada di pantai Lovina Singaraja Bali Utara pada akhir siang atau ketika sunset di Lovina Beach. Jajaran pegunungan di timur pulau jawa ini memiliki keindahan yang sangat unik. Gunung ini terletak di Kabupaten Bondowoso Jawa Timur. Gunung api raksasa ini muncul di sebelah timur dari suatu deretan puing gunung api yang berarah barat laut–tenggara. Di Puncaknya terdapat sebuah kaldera yang berbentuk elips dan terdapat kerucut setinggi kurang lebih 100 m dan mempunyai puncak 3.332 mdpl.Berdasarkan Data Dasar Gunung Api Indonesia (2011), Raung tercatat meletus pertama kali pada tahun 1586. Disebutkan, letusan tahun itu sangat dahsyat dan menimbulkan korban jiwa. Namun, tidak disebutkan berapa banyak korbannya. Pada tahun 1638, Raung kembali meletus hebat disertai banjir besar dan aliran lahar melanda Kali Stail dan Kali Klatak. Korban jiwa mencapai ribuan orang. Saat itu, di kawasan tersebut berdiri Kerajaan Macan Putih di bawah pemerintahan Pangeran Tawangulun. Hingga tahun 1989, terjadi 43 letusan di Gunung Raung .\n",
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
                                          "Gunung Raung memiliki puncak tertinggi: 3.260 m dpl dan koordinat 8°07′30″S 114°02′30″EKoordinat: 8°07′30″S 114°02′30″E.                                                                                                                                            \n",
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
                                          "•	Via Kalibaru\nPendakian Gunung Raung via Kalibaru terletak di Dusun Wonorejo, Desa Kalibaru Wetan, Kalibaru, Banyuwangi. Jika berasal dari luar Banyuwangi, kamu bisa menggunakan kereta api tujuan Stasiun Kalibaru. Sesampainya di stasiun, kamu bisa naik ojek atau menyewa mobil untuk menuju base camp Kalibaru.\n•	Via Sumber Wringin\nRute pendakian via Sumber Waringin merupakan satu-satunya jalur pendakian melalui Bondowoso. Basecamp-nya terletak di Desa Sumber Wringin, Wonosari, Bondowoso. Jalur ini merupakan jalur yang paling sering dipilih pendaki sebelum adanya jalur Kalibaru yang baru dibuka awal tahun 2000.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Raung                                                     ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "•	Air Terjun Telunjuk Raung\nAir Terjun Telunjung Raung merupakan surga kecil yang terletak di kaki Gunung Raung, Banyuwangi. Selain terkenal dengan medannya yang berat, gunung satu ini juga terkenal dengan kemistisannya. Meski begitu, air terjun di sekitar kawasan ini jauh dari kesan seram melainkan segar, sejuk dan asri.\n•	Air Terjun Lider\nAir terjun di sekitar Gunung Raung satu ini memiliki ketinggian sekitar 60 meter. Terletak di 1300 mdpl, udara di sekitar air terjun pun terasa sejuk dan dingin. Uniknya, di bagian sisi air terjun utama, terdapat air terjun lain yang lebih kecil. Ini, membuat Air Terjun Lider bertambah kecantikannya.\n•	Air Terjun Rowosari\nWarga Desa Rowosari beruntung memiliki banyak air terjun di desanya. Desa yang masuk dalam Kecamatan Sumberjambe ini memiliki sekitar tujuh air terjun yang dapat dinikmati keindahannya. Udara di sekitar Air Terjun Rowosari sangat segar dan sejuk.\n",
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
                                          "Secara administratif, kawasan gunung ini termasuk dalam wilayah tiga kabupaten di wilayah Besuki, Jawa Timur, yaitu Banyuwangi, Bondowoso, dan Jember.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/wWsMx5pzo2rPSBGd7');
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
