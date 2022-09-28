import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Cikuray extends StatelessWidget {
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
                                          "Gunung Cikuray",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/cikuray.jpg",
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
                                          "Gunung Cikuray ini merupakan gunung tertinggi di tanah Garut.  Gunung Cikuray terletak di 3 kecamatan, yaitu Bayongbong, Cilawu, dan Cikajang. Para pendaki yang pernah mendaki ke Gunung Cikuray ini sering menjulukinya “Samudera Diatas Awan” karena gumpalan awan akan tepat berada dibawah kita ketika dipuncaknya.Gunung Cikuray merupakan Gunung terbesar ke empat di Jawa Barat yang berada di Kabupaten Garut Jawa Barat. Gunung tertinggi di Garut ini mempunyai ketinggian sekitar 2.821 meter diatas permukaan laut. Gunung Cikuray berada di tiga kecamatan yaitu Kecamatan Bayongbong, Cikajang Dan Kecamatan Cilawu, desa Dayeuh Manggung. Dari kecamatan Cilawu, Desa Dayeuh Manggung, Gunung Cikuray berbatasan langsung dengan Kabupaten Tasikmalaya.\n",
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
                                          "Gunung Cikuray yang mempunyai ketinggian 2.821 meter di atas permukaan laut ini tidak mempunyai kawah aktif dan merupakan gunung tertinggi keempat di Jawa Barat setelah Gunung Ciremai, Gunung Pangrango dan Gunung Gede. Gunung ini berada di perbatasan kecamatan Bayongbong dari sini bisa naik melalui jalur Cilegug atau kampung Jambansari dekat markas HdG Team, Cikajang, Kiara Janggot dan Dayeuhmanggung. Iklim di daerah Gunung Cikuray dan sekitarnya dikategorikan sebagai daerah beriklim tropis basah (humid tropical climate). Curah hujan di sekitar Gunung Cikuray mencapai 3500-4000mm dengan kalkulasi bulan basah 9 bulan dan bulan kering 3 bulan dan juga variasi temperatur dari 10º C hingga 24º C.\n",
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
                                          "Untuk mencapai Cikuray dapat ditempuh dengan naik kendaraan umum dari Bandung atau dari Tasikmalaya menuju terminal Guntur. Dari sana diteruskan dengan angkutan kota menuju jalur pendakian, (Desa Dangiang, Bayongbong, Cikajang, dan Dayeuhmanggung). Keempat jalur tersebut menawarkan medan yang sangat menarik dengan karakteristik masing-masing. Jalur Desa Dangiang adalah jalur yang landai dan terdapt sumber air juga Sinyal HP, sehingga dapat cepat sampai menuju puncak.Karena letaknya paling tinggi di Kabupaten Garut, kaki gunung Cikuray dipakai untuk stasiun pemancar TV swasta dan TVRI. Gunung Cikuray mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, Hutan Montane dan Hutan Ericaceous.\n",
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
                                          "Dayeuhmanggung, Kabupaten Garut, Jawa Barat, Indonesia.\n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/CwHmLwzTMYgampb18');
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
