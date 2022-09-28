import 'dart:ui';

import 'package:gunung_ind/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../datasourcex.dart';

class Ijen extends StatelessWidget {
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
                                          "Gunung Ijen",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 10),
                                        Image.asset(
                                          "assets/images/ijen.jpg",
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
                                          "Gunung Ijen berada di perbatasan Kabupaten Banyuwangi dan Bondowoso. Saat ini masih belum ada Keputusan SK Menteri Dalam Negeri yang menentukan tapal batas kedua kabupaten Banyuwangi dan Bondowoso.Pemerintah Banyuwangi bersikukuh bahwa Gunung Ijen milik Banyuwangi berdasarkan peta di zaman Belanda. Yakni Besoeki Afdeling 1895, Idjen Hooglan 1920, Java Madura 1942, Java Resn Besoeki 1924, Java Resn Besoeki 1924 Blad XCIII C, dan Java Resn Besoeki 1925.Sementara pemerintah Bondowoso mengakui Gunung Ijen berdasarkan peta milik Badan Koordinasi Survei dan Pemetaan Nasional tahun 2000. Dalam peta ini, Gunung Ijen itu dibagi dua, milik Banyuwangi dan Bondowoso. Bahkan di sebutkan di situ bahwa peta ini bukan menyangkut peta batas wilayah.Perebutan status kepemilikan Gunung Ijen sejak tahun 2006 karena potensi wisata dan tambang belerang yang dimiliki gunung berapi ijen tersebut. Kawah Ijen adalah kawah terbesar di dunia, warna dari kawah biru kehijauan yang sangat cantik juga menjadi daya tarik tersendiri. Kawah Ijen yang memiliki kedalaman 200 m dan sangat luas ini,sangat ramai dikunjungi oleh wisatawan manca negara.Dalam Tulisan di majalah Familia pada Desember 2003 pernah ditulis tentang sekelumit sejarah Gunung Ijen, seperti yang tertulis di bawah ini.Nama Ijen mulai dikenal dunia sejak kedatangan dua turis asal Perancis, Nicolas Hulot dan istrinya Katia Kraft pada tahun 1971. Mereka menuliskan kisah pesona Kawah Ijen beserta kerasnya kehidupan para penambang bongkahan belerang di majalah Geo,Perancis. Dua hal inilah yang menjadi daya tarik utama bagi para wisatawan dan fotografer dunia.Nama Gunung Ijen juga disebut-sebut tatkala seorang pangeran dari Kerajaan Wilis bergerilya melawan VOC dari balik lereng pegunungan Ijen pada masa penjajahan. Meski akhirnya kalah, kisah ini membuktikan Ijen sebagai tempat persembunyian yang ideal bagi para pejuang Blambangan. Tanahnya yang bergunung-gunung dan dipenuhi hutan lebat, sungguh menakutkan bagi orang luar. Kesan angker begitu melekat di wilayah tak bertuan ini.Kartu Pos Belanda pembangunan Irigasi Kawah Idjen di Banyuwangi 1900anAlam Ijen mulai tersentuh tatkala Kompeni Belanda menyewakan tanah yang amat luas di daerah Besuki, Panarukan, Probolinggo dan sekitarnya kepada saudagar dan kapten penduduk Cina di Surabaya yang kaya raya, Han Chan Pit dan saudaranya, Han Ki Ko.Untuk menarik minat pekerja, mereka membagi-bagikan beras gratis saat musibah kelaparan menyerang. Dalam waktu singkat, datanglah 40 ribu pekerja asal Madura. Mereka membuka lahan, bertanam padi dan sayuran, menggunakan sistem irigasi yang teratur. Namun meletusnya pemberontakan para petani yang dipimpin Kiai Mas pada tahun 1813 membuat tanah sewaan ini dibeli kembali.Pelaksanaan politik culturstelse oleh Belanda di akhir abad ke-19 memaksa pembukaan kembali lahan-lahan terpencil ini, termasuk Pegunungan Ijen untuk dijadikan perkebunan kopi dan karet. Lagi-lagi didatangkan ribuan pekerja asal Madura. Maka terciptalah ‘Madura kecil’ yang menjadi pusat pemukiman orang Madura beserta adat, budaya, dan bahasanya. Madura kecil kini masih bisa kita jumpai di sebagian Jember, Situbondo, Bondowoso, dan Banyuwangi.\n",
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
                                          " Gunung ini memiliki ketinggian 2.386 mdpl dan memiliki kordinat 058°S 114.242°E.                                                                                                                                                     \n",
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
                                          "Jalur Barat\n	Surabaya – Bondowo 191 Km dengan bus\n	Bondowoso – Sempol 165 Km dengan bus\n	Sempol – Banyupait 14 Km dengan bus\n	Banyupait – Paltuding 4Km dengan mobil\n	Paltuding – Kawah Ijen 3 Km dengan jalan kaki\n\nJalur Timur\n	Denpasar – Banyuwangi 140 Km dengan bus / ferry\n	Banyuwangi – Jambu 18Km dengan mobil\n	Jambu – Kawah Ijen 21 Km dengan berjalan kaki\n                                                                                                                                                                             ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "Objek Wisata Gunung Ijen                                                                                                                                                                                                          ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Text(
                                          "•	Kawah Ijen Banyuwangi\nBerupa danau asam berwarna hijau kebiruan dengan diameter sekitar 700 meter, luasan mencapai 5.466 hektar, kedalaman danau sekitar 200 meter. Volume danau Kawah Ijen mencapai 36 juta meter kubik, dengan dinding kaldera setinggi 300-500 meter, dan tingkat derajat keasaman (pH) air danau mendekati nol, yang mampu melarutkan baju, bahkan kulit dan tubuh manusia dalam waktu sekejap. Namun, tenang saja. Selama Anda masih berada dalam jarak yang aman, Kawah Ijen tidak berbahaya.\n•	Taman Sritanjung\nTerletak di Jalan Sritanjung, Banyuwangi, Taman Sritanjung berjarak sekitar 13,3 kilometer dari Kawah Ijen.Taman Sritanjung di depan Pendopo Kabupaten Banyuwangi jadi pilihan warga yang ingin menyejukkan mata dengan bunga aneka warna dan air mancur.\n•	Desa Taman Sari\nDesa ini berada di kawasan Gunung Ijen, Kecamatan Licin, Banyuwangi, Jawa Timur. Diapit oleh Kampung Penambang, Kampung Bunga, dan Kampung Susu. Desa ini diresmikan sebagai desa wisata pada pertengahan 2016.Wisatawan dapat melihat keunikan budaya masyarakat Osing - suku asli di Kabupaten Banyuwangi. Ada juga pentas musik kelas dunia seperti Ijen Summer Festival.\n",
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
                                          "Terletak di perbatasan antara Kabupaten Banyuwangi dan Kabupaten Bondowoso, Jawa Timur, Indonesia. \n",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.justify,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            launch('https://goo.gl/maps/piiWQoXi7ijqEXQB6');
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
