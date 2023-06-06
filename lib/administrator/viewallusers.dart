import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo2/Main%20page/mainPage.dart';
import 'package:demo2/administrator/Usertile.dart';
import 'package:demo2/administrator/administratormain.dart';
import 'package:demo2/bloodpage/bloodtiles.dart';
import 'package:demo2/bloodpage/requestblood.dart';
import 'package:demo2/chairty%20page/charitytiles.dart';
import 'package:demo2/charityadmin/charityadminmain.dart';
import 'package:demo2/profilepage.dart/profileBadges.dart';
import 'package:demo2/profilepage.dart/profileView.dart';
import 'package:demo2/side%20bar/side_bar.dart';
import 'package:demo2/volunteer%20page/eventtiles.dart';
import 'package:demo2/volunteer%20page/manageyourevents.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../colors.dart';
import 'adminCharityTiles.dart';

class Viewallusers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ViewallusersChild();
  }
}

class ViewallusersChild extends State<Viewallusers> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.bottomLeft,
              colors: [Colors.white, Colors.white])),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          width: width * 0.1,
                          child: InkWell(
                              child: Icon(Icons.arrow_back_ios_new),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdminMain()),
                                );
                              })),
                      Spacer(),
                      Text(
                        "App users",
                        style: TextStyle(fontSize: width * 0.1),
                      ),
                      Spacer(),
                      Spacer()
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Text(
                  "This is the list of all app users",
                  style: TextStyle(fontSize: width * 0.06),
                ),
                Divider(
                  thickness: 1,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Usertile(),
                    Usertile(),
                    Usertile(),
                    Usertile(),
                    Usertile(),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}