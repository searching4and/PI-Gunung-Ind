import 'package:flutter/material.dart';
import 'package:gunung_ind/home_tengah.dart';
import 'package:gunung_ind/pop_up.dart';
import 'package:gunung_ind/widgets/category_card.dart';

import 'datasourcex.dart';
import 'home_barat.dart';
import 'home_timur.dart';


class HomeScreen extends StatelessWidget {
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
                    "Java Mountain",
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
                          title: "Jawa Barat",
                          svgSrc: "assets/icons/barat.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeBarat();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Jawa Tengah",
                          svgSrc: "assets/icons/tengah.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeTengah();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Jawa Timur",
                          svgSrc: "assets/icons/timur.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return HomeTimur();
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

