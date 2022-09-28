import 'package:flutter/material.dart';
import 'package:gunung_ind/pop_up.dart';
import 'package:gunung_ind/screens_tengah/lawu.dart';
import 'package:gunung_ind/screens_tengah/merapi.dart';
import 'package:gunung_ind/screens_tengah/merbabu.dart';
import 'package:gunung_ind/screens_tengah/prau.dart';
import 'package:gunung_ind/screens_tengah/slamet.dart';
import 'package:gunung_ind/widgets/category_card.dart';

import 'datasourcex.dart';


class HomeTengah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.greenAccent[400],
        actions: <Widget>[
          IconButton(
              icon: Icon(Theme.of(context).brightness == Brightness.dark
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
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .94,
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    "Jawa Tengah",
                    style: Theme
                        .of(context)
                        .textTheme
                        .display1
                        .copyWith(
                        fontWeight: FontWeight.w900, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                      children: <Widget>[
                        CategoryCard(
                          title: "Gunung Slamet",
                          svgSrc: "assets/icons/slamet.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Slamet();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Merbabu",
                          svgSrc: "assets/icons/merbabu.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Merbabu();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Merapi",
                          svgSrc: "assets/icons/merapi.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Merapi();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Lawu",
                          svgSrc: "assets/icons/lawu.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Lawu();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Prau",
                          svgSrc: "assets/icons/prau.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Prau();
                              }),
                            );
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 55,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    color: Colors.greenAccent[400],
                    child: Text(
                      DataSourcex.quote,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

