import 'package:csitentrance/download/downloadhome.dart';
import 'package:csitentrance/test.dart';
import 'package:launch_review/launch_review.dart';
import 'package:csitentrance/screens/colleges.dart';
import 'package:csitentrance/screens/notice.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:csitentrance/practice/practicehome.dart';
import 'package:csitentrance/quiz/quizhomepage.dart';
import 'package:csitentrance/screens/contactus.dart';
import 'package:csitentrance/screens/about.dart';
import 'package:csitentrance/screens/faq.dart';
import 'package:csitentrance/screens/teampage.dart';
import 'package:csitentrance/youtubePlaylist/ytplaylist.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  // bool _isInterstitialAdLoaded = false;
  // MoPubInterstitialAd? interstitialAd;

  @override
  void initState() {
    super.initState();
    // try {
    //   MoPub.init('7e32c94298384e919901140bd8b5a7c9', testMode: true).then((_) {
    //     _loadInterstitialAds();
    //     interstitialAd!.load();
    //   });
    // } on PlatformException {}
  }

  // void _loadInterstitialAds() {
  //   interstitialAd = MoPubInterstitialAd(
  //     '7e32c94298384e919901140bd8b5a7c9',
  //     (result, args) {
  //       print('Interstitial $result');
  //     },
  //     reloadOnClosed: true,
  //   );
  // }

  @override
  void dispose() {
//    myBanner.dispose();
//    myInterstitial.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget homecontainer(String title, IconData icon, VoidCallback onpressed) {
      return Container(
        width: MediaQuery.of(context).size.width * 0.29,
        height: MediaQuery.of(context).size.height * 0.16,
        child: InkWell(
          onTap: onpressed,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(11),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, size: 30),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: "Quando",
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )),
          ),
        ),
      );
    }

    return Scaffold(
        // bottomNavigationBar: Container(
        //   height: MediaQuery.of(context).size.height * 0.073,
        //   // decoration: BoxDecoration(
        //   //   image: DecorationImage(
        //   //     image: AssetImage("images/allen.gif"),
        //   //     fit: BoxFit.contain
        //   //   )
        //   //
        //   // )
        //   child: MoPubBannerAd(
        //     adUnitId: '0721b327cf84420aa5dcc1677c841879',
        //     bannerSize: BannerSize.STANDARD,
        //     keepAlive: true,
        //     listener: (result, dynamic) {
        //       print('$result');
        //     },
        //   ),
        // ),
        appBar: AppBar(
          // for dark mode
          /* actions: <Widget>[
          IconButton(icon: Icon(Icons.brightness_3, color: Colors.black, ),iconSize: 40,
           onPressed: null),

        ],*/

          backgroundColor: Colors.indigo,
          title: Text("CSIT Entrance"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.indigo,
                child: Center(
                    child: Text(
                  "CSIT ENTRANCE APP",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(" Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info,
              ),
              title: Text(" About "),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.group,
              ),
              title: Text(" Our Team"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Teams();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call,
              ),
              title: Text(" Contact "),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contact()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call,
              ),
              title: Text(" Test "),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NativeAds()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
              ),
              title: Text("Share"),
              onTap: () {
                Share.share(
                    " Hello there you can download our app from this link https://play.google.com/store/apps/details?id=com.neptechpal.csitentrance");
              },
            ),
            ListTile(
              onTap: () {
                LaunchReview.launch(
                    androidAppId: "com.neptechpal.csitentrance");
              },
              leading: Icon(
                Icons.star_border,
              ),
              title: Text(" Rate "),
            ),
            ListTile(
              onTap: () {
                launch(
                    "https://play.google.com/store/apps/developer?id=Neptechpal+pvt.+Ltd");
              },
              leading: Icon(
                Icons.add,
              ),
              title: Text(" More Apps "),
            ),
          ]),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width * 1.5,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: <Widget>[
                //for carousel
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.262,
                  child: Container(
                    height: 100,
                    child: SizedBox(
                      height: 150.0,
                      width: 300.0,
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        autoplay: true,
                        autoplayDuration: Duration(seconds: 5),
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 5.0,
                        dotColor: Colors.green,
                        dotIncreasedColor: Color(0xFFFF335C),
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomCenter,
                        dotVerticalPadding: 1.0,
                        showIndicator: true,
                        indicatorBgPadding: 7.0,
                        images: [
                          AssetImage("images/allen1.jpg"),
                          // AssetImage("images/background.jpg"),
                          // AssetImage("images/allen2.jpg"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 1.5,
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: ListView(children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                homecontainer("Quiz Test", Icons.thumb_up, () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                }),
                                homecontainer("Download", Icons.download_sharp,
                                    () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DownloadHome()));
                                }),
                                homecontainer("Practice", Icons.text_fields,
                                    () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          PracticeHomePage()));
                                }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                homecontainer(
                                    "Videos", Icons.play_circle_fill_outlined,
                                    () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => YTPlaylist(
                                          url:
                                              "https://csitentrancefinal.herokuapp.com/",
                                          title: "Videos")));
                                }),
                                homecontainer(
                                    "Notices", Icons.notification_important,
                                    () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Notices()));
                                }),
                                homecontainer("Colleges", Icons.library_books,
                                    () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Colleges()));
                                }),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                homecontainer("FAQ", Icons.question_answer, () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => FAQ()));
                                }),
                                homecontainer("Feedback", Icons.feedback, () {
                                  launch('mailto: neptechpal355@gmail.com');
                                }),
                                homecontainer("More Info", Icons.pending, () {
                                  launch(
                                      "https://www.neptechpal.com/b-sc-csit-entrance-model-questions-and-old-questions/");
                                }),
                              ],
                            ),
                          ),
                        ],
                      )
                    ]))
              ],
            )));
  }

  //CSIT INterstial code 832688867574510_834260920750638
  // CSIT Banner code 832688867574510_832689264241137

}
