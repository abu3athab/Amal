import 'package:demo2/Main%20page/mainpagesearch.dart';
import 'package:demo2/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../log in/logIn.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileChild();
  }
}

class ProfileChild extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/gradientredblue.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            Text(
              "My Profile",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Container(
              width: width * 0.92,
              height: height * 0.65,
              padding: new EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/girlportrait.jpeg'),
                    radius: width * 0.22,
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Text(
                    "Alessandra Lauren",
                    style: TextStyle(color: logoColor, fontSize: 30),
                  ),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Text('AMMAN, JORDAN'),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Text("Bio",
                      style: new TextStyle(
                          fontSize: 20.0,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Colors.pinkAccent,
                                Colors.deepPurpleAccent,
                                Colors.red
                                //add more color here.
                              ],
                            ).createShader(
                                Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                  SizedBox(
                    height: height * 0.008,
                  ),
                  Container(
                    width: width * 0.75,
                    child: Flexible(
                      child: Text(
                          "I live in the sunshine where I belong, Sprinkling kindness everywhere I go.",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: 15.0,
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: <Color>[
                                    Colors.pinkAccent,
                                    Colors.deepPurpleAccent,
                                    logoColorsec
                                    //add more color here.
                                  ],
                                ).createShader(
                                    Rect.fromLTWH(50.0, 0.0, 200.0, 100.0)))),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.7,
                    height: 2,
                    color: logoColorsec,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    width: width * 0.7,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Username:",
                              style: TextStyle(color: logoColorsec),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Alessandra.Love1710",
                              style: TextStyle(color: logoColorsec),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Email:",
                              style: TextStyle(color: logoColorsec),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Alessandra_Lauren@gmail.com",
                              style: TextStyle(color: logoColorsec),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number:",
                              style: TextStyle(color: logoColorsec),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "0790741003",
                              style: TextStyle(color: logoColorsec),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Gender:",
                              style: TextStyle(color: logoColorsec),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(color: logoColorsec),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Date of Birth:",
                              style: TextStyle(color: logoColorsec),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Oct/17/2000",
                              style: TextStyle(color: logoColorsec),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              width: width * 0.65,
              height: height * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                elevation: 10,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    width: width * 0.025,
                  ),
                  IconButton(
                    iconSize: height * 0.04,
                    icon: const Icon(Icons.volunteer_activism),
                    tooltip: 'Increase ',
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  IconButton(
                    iconSize: height * 0.04,
                    icon: const Icon(Icons.account_circle),
                    tooltip: 'Increase ',
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    width: width * 0.1,
                  ),
                  IconButton(
                    iconSize: height * 0.04,
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                ]),
              ),
            ),
          ],
        )),
      ),
    );
  }
}