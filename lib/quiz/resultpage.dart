// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:csitentrance/main/mainhomepage.dart';

import 'answerdetailpage.dart';

const String testdevice = "mobile id";

class resultpage extends StatefulWidget {
  int? marks;
  final String? setno;
  resultpage({Key? key, @required this.marks, this.setno});
  @override
  _resultpageState createState() => _resultpageState();
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String? message;
  String? image;

  @override
  void initState() {
    if (widget.marks! < 10) {
      image = images[2];
      message =
          "You Should Try Hard..\n" + "You Scored $widget.marks out of 20";
    } else if (widget.marks! < 15) {
      image = images[1];
      message = "You Can Do Better..\n" + "You Scored $widget.marks out of 20";
    } else {
      image = images[0];
      message = "You Did Very Well..\n" + "You Scored $widget.marks out of 20";
    }
    super.initState();
  }

  // int? marks;
  // _resultpageState(this.marks);
//  InterstitialAd myInterstitial = InterstitialAd(
//    adUnitId: "ca-app-pub-9510861237106695/2394283413",
//    listener: (MobileAdEvent event) {
//      print("InterstitialAd event is $event");
//    },
//  );
//  @override
//  void dispose() {
//    myInterstitial.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
      ),
      appBar: AppBar(
        title: Text(
          "Result",
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image!,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: Text(
                            message!,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Quando",
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    // InterstitialAd(adUnitId: "ca-app-pub-9510861237106695/2394283413")
                    //   ..load()
                    //   ..show();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => MainHomePage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                ),
                OutlineButton(
                  onPressed: () {
                    // _showInterstitialAd();
                    // InterstitialAd(adUnitId: "ca-app-pub-3772471137982355/7444024956")
                    //   ..load()
                    //   ..show();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Jsonget(widget.setno!),
                    ));
                  },
                  child: Text(
                    "View Answer",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
