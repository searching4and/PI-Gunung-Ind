import 'package:flutter/material.dart';
import 'package:gunung_ind/pop_up.dart';
import 'package:gunung_ind/screens_barat/cikuray.dart';
import 'package:gunung_ind/screens_barat/ciremai.dart';
import 'package:gunung_ind/screens_barat/gede.dart';
import 'package:gunung_ind/screens_barat/papandayan.dart';
import 'package:gunung_ind/screens_barat/salak.dart';
import 'package:gunung_ind/widgets/category_card.dart';

import 'datasourcex.dart';


class HomeBarat extends StatelessWidget {
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
                    "Jawa Barat",
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
                          title: "Gunung Gede",
                          svgSrc: "assets/icons/gede.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Gede();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Ciremai",
                          svgSrc: "assets/icons/ciremai.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Ciremai();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Cikuray",
                          svgSrc: "assets/icons/cikuray.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Cikuray();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Papandayan",
                          svgSrc: "assets/icons/papandayan.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Papandayan();
                              }),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "Gunung Salak",
                          svgSrc: "assets/icons/salak.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Salak();
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

