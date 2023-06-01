import 'package:demo2/Main%20page/mainPage.dart';
import 'package:demo2/bloodpage/bloodtiles.dart';
import 'package:demo2/bloodpage/requestblood.dart';
import 'package:demo2/chairty%20page/charityitemlist.dart';
import 'package:demo2/chairty%20page/charitymainpage.dart';
import 'package:demo2/chairty%20page/charitypage.dart';
import 'package:demo2/chairty%20page/charitytiles.dart';
import 'package:demo2/paymentPages/choosepaymentmethode.dart';
import 'package:demo2/profilepage.dart/profileBadges.dart';
import 'package:demo2/profilepage.dart/profileView.dart';
import 'package:demo2/side%20bar/side_bar.dart';
import 'package:demo2/volunteer%20page/eventtiles.dart';
import 'package:demo2/volunteer%20page/manageyourevents.dart';
import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductpageChild();
  }
}

class ProductpageChild extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: width * 0.2,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Charitypage()),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: width * 0.2,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Done",
                            style: TextStyle(fontSize: width * 0.06),
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    height: height * 0.3,
                    child: Image.asset(
                      "assets/clothes.gif",
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Winter Clothing for childern",
                    style: TextStyle(fontSize: 34),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    child: Text(
                      "description",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: width,
                    child: Text(
                      "lsdklkdsjfjs;dlfJHKLJshdfkjshdFKJHSdklfjhksjdhfkjsdfkjshdkjfhsdkjfhkjdhsfkjh",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: width,
                      child: Text(
                        "how much money would you like to donate towards this",
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Ammount in JOD',
                  ),
                ),
                Expanded(child: SizedBox()),
                SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Choosepayment()),
                        );
                      },
                      child: Text("Proced to payment"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )))),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}