import 'dart:async';
//import '../admanager.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:firebase_admob/firebase_admob.dart';

import './resultpage.dart';
import 'dart:convert';

//const String testdevice = "mobile id";

class Getjson extends StatelessWidget {
  // accept the setno as a parameter

  String setno;
  Getjson(this.setno);
  String? assettoload;

  // a function
  // sets the asset to a particular JSON file
  // and opens the JSON
  setasset() {
    if (setno == "Quiz set 1") {
      assettoload = "assets/physics1.json";
    } else if (setno == "Quiz set 2") {
      assettoload = "assets/physics2.json";
    } else if (setno == "Quiz set 3") {
      assettoload = "assets/physics3.json";
    } else if (setno == "Quiz set 4") {
      assettoload = "assets/physics4.json";
    } else if (setno == "Quiz set 5") {
      assettoload = "assets/physics5.json";
    } else if (setno == "Quiz set 6") {
      assettoload = "assets/english1.json";
    } else if (setno == "Quiz set 7") {
      assettoload = "assets/english2.json";
    } else if (setno == "Quiz set 8") {
      assettoload = "assets/english3.json";
    } else if (setno == "Quiz set 9") {
      assettoload = "assets/english4.json";
    } else if (setno == "Quiz set 10") {
      assettoload = "assets/english5.json";
    } else if (setno == "Quiz set 11") {
      assettoload = "assets/chemistry1.json";
    } else if (setno == "Quiz set 12") {
      assettoload = "assets/chemistry2.json";
    } else if (setno == "Quiz set 13") {
      assettoload = "assets/chemistry3.json";
    } else if (setno == "Quiz set 14") {
      assettoload = "assets/chemistry4.json";
    } else if (setno == "Quiz set 15") {
      assettoload = "assets/chemistry5.json";
    } else if (setno == "Quiz set 16") {
      assettoload = "assets/math1.json";
    } else if (setno == "Quiz set 17") {
      assettoload = "assets/math2.json";
    } else if (setno == "Quiz set 18") {
      assettoload = "assets/math3.json";
    } else if (setno == "Quiz set 19") {
      assettoload = "assets/math4.json";
    } else {
      assettoload = "assets/math5.json";
    }
  }

//  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
//    keywords: <String>[
//      'education',
//      'entrance app',
//      'quiz ',
//      'nepal education',
//      'online study'
//    ],
//    childDirected: false,
//    testDevices: <String>[testdevice],
//  );
//
//  BannerAd myBanner = BannerAd(
//    adUnitId: AdManager.bannerAdUnitId,
//    size: AdSize.smartBanner,
//    listener: (MobileAdEvent event) {
//      print("BannerAd event is $event");
//    },
//  );
//
//  InterstitialAd myInterstitial = InterstitialAd(
//    adUnitId: AdManager.interstitialAdUnitId,
//    listener: (MobileAdEvent event) {
//      print("InterstitialAd event is $event");
//    },
//  );
//  @override
//  void initState() {
//    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
//
//    myBanner
//      ..load()
//      ..show(
//        anchorType: AnchorType.bottom,
//      );
//  }
//
//  @override
//  void dispose() {
//    myBanner.dispose();
//    myInterstitial.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    // this function is called before the build so that
    // the string assettoload is avialable to the DefaultAssetBuilder
    setasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload!, cache: true),
      builder: (context, snapshot) {
        //TODO check it works or not
        List mydata = json.decode((snapshot.data.toString()));
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return QuizPage(
            mydata: mydata,
            setno: setno,
          );
        }
      },
    );
  }
}

class QuizPage extends StatefulWidget {
  //var
  final mydata;
  final setno;

  QuizPage({Key? key, @required this.mydata, this.setno}) : super(key: key);
  @override
  _QuizPageState createState() => _QuizPageState(mydata);
}

class _QuizPageState extends State<QuizPage> {
  var mydata;
  _QuizPageState(this.mydata);

  Color colortoshow = Colors.teal;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  // extra varibale to iterate
  int j = 1;
  int timer = 60;
  String showtimer = "60";

  Map<String, Color> btncolor = {
    "a": Colors.teal,
    "b": Colors.teal,
    "c": Colors.teal,
    "d": Colors.teal,
  };

  bool canceltimer = false;

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  // import 'dart:math';

  //   var Random_Array;
  //   var distinctIds = [];
  //   var rand = new Random();
  //     for (int i = 0; ;) {
  //     distinctIds.add(rand.nextInt(10));
  //       Random_Array = distinctIds.toSet().toList();
  //       if(Random_Array.length < 10){
  //         continue;
  //       }else{
  //         break;
  //       }
  //     }
  //   print(Random_Array);

  // ----- END OF CODE
  var Random_Array = [
    1,
    6,
    7,
    2,
    4,
    10,
    8,
    3,
    9,
    5,
    13,
    11,
    14,
    12,
    15,
    17,
    16,
    20,
    18,
    19
  ];

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();
    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 60;
    setState(() {
      if (j < 20) {
        i = Random_Array[j];
        j++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => resultpage(setno: widget.setno, marks: marks),
        ));
      }
      btncolor["a"] = Colors.teal;
      btncolor["b"] = Colors.teal;
      btncolor["c"] = Colors.teal;
      btncolor["d"] = Colors.teal;
    });
    starttimer();
  }

  void checkanswer(String k) {
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2][i.toString()] + " is equal to " + mydata[1][i.toString()][k]);
      marks = marks + 1;
      // changing the color variable to be green
      colortoshow = right;
    } else {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2]["1"] + " is equal to " + mydata[1]["1"][k]);
      colortoshow = wrong;
    }
    setState(() {
      // applying the changed color to the particular button that was selected
      btncolor[k] = colortoshow;
      canceltimer = true;
    });

    // changed timer duration to 1 second
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.teal[700],
        highlightColor: Colors.teal[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text(
                        "CSIT Entrance App",
                      ),
                      content: Text("Sorry you cant exit quiz at this stage"),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'ok',
                          ),
                        ),
                      ],
                    )) ??
            false;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  mydata[0][i.toString()],
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Quando",
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choicebutton('a'),
                    choicebutton('b'),
                    choicebutton('c'),
                    choicebutton('d'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Text(
                    showtimer,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
