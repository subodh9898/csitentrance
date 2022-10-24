import 'dart:async';

import 'package:flutter/material.dart';
import 'package:csitentrance/main/mainhomepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return MainHomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.indigo,
                radius: 50.0,
                backgroundImage: AssetImage('images/ic_launcher copy.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                " CSIT Entrance\n Test Yourself!!",
                style: TextStyle(
                    fontSize: 40.0, color: Colors.white, fontFamily: "Satisfy"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
