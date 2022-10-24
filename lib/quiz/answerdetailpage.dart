import 'dart:convert';
import 'dart:ffi';

// import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
// import 'package:mopub_flutter/mopub_banner.dart';
// import 'package:mopub_flutter/mopub_banner.dart';
// import 'package:visitpokhara/screens/homepage.dart';

class Jsonget extends StatelessWidget {
  String setno;
  Jsonget(this.setno);
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

  @override
  void initState() {
    // FacebookAudienceNetwork.init();
  }

  @override
  Widget build(BuildContext context) {
    setasset();

    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload!, cache: true),
      builder: (context, snapshot) {
        List mydata = json.decode((snapshot.data.toString()));
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "छिट्टै आउदै कृपया प्रतिक्ष गर्नुहोस!!!!",
              ),
            ),
          );
        } else {
          return AnswerPage(mydata: mydata);
        }
      },
    );
  }
}

class AnswerPage extends StatefulWidget {
  final mydata;

  AnswerPage({Key? key, @required this.mydata}) : super(key: key);
  @override
  _AnswerPageState createState() => _AnswerPageState(mydata);
}

class _AnswerPageState extends State<AnswerPage> {
  var mydata;
  _AnswerPageState(this.mydata);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context);
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => HomePage()));
        throw nullptr;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.08,
          // child: MoPubBannerAd(
          //   adUnitId: '6ccd374608184933af6a2b330f3c7a99',
          //   bannerSize: BannerSize.STANDARD,
          //   keepAlive: true,
          //   listener: (result, dynamic) {
          //     print('$result');
          //   },
          // ),
          // child: FacebookBannerAd(
          //   keepAlive: true,
          //   placementId: "171963307955660_171964114622246",
          //   bannerSize: BannerSize.STANDARD,
          //   listener: (result, value) {
          //     print("Banner Ad: $result -->  $value");
          //   },
          // ),
        ),
        appBar: AppBar(
          title: Text(" Answers"),
        ),
        // body: Center(
        //   child: Text(widget.mydata[0][1.toString()]),
        // ),
        body: ListView.separated(
            separatorBuilder: (context, index) => Container(
                  height: 1,
                  color: Colors.grey,
                ),
            itemCount: widget.mydata[0].length,
            itemBuilder: (context, i) {
              int j = 1;
              i = i + j;
              return ListTile(
                title: Text("$i.  " + widget.mydata[0][i.toString()]),
                subtitle: Text(
                  widget.mydata[2][i.toString()],
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                // leading: CircleAvatar(
                //   radius: 30,
                //   child: Text("${i}"),
                // ),
              );
            }),
      ),
    );
  }
}
