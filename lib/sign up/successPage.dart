import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo2/Main%20page/mainpagesearch.dart';
import 'package:demo2/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../log in/logIn.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              height: height * 0.1,
            ),
            Text(
              "Yay Success!!",
              style: TextStyle(fontSize: 27, color: Colors.black),
            ),
            Container(
              child: Image.asset(
                "assets/happygirlpassword.jpeg",
                height: height * 0.30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your account has been successfuly registered",
              style: TextStyle(fontSize: 20, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              width: width * 0.6,
              height: height * 0.07,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor: MaterialStateProperty.all(logoColor)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
