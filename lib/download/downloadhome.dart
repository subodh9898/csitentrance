// import 'package:facebook_audience_network/facebook_audience_network.dart';
// import 'package:csitentrance/download/downloadedviewscreen.dart';
import 'package:csitentrance/download/downloadingscreen.dart';
import 'package:csitentrance/screens/mycontainerbox.dart';
// import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:visitpokhara/download/downloadedviewscreen.dart';
// import 'package:visitpokhara/download/downloadingscreen.dart';
// import 'package:visitpokhara/widgets/mycontainerbox.dart';

class DownloadHome extends StatefulWidget {
  @override
  _DownloadHomeState createState() => _DownloadHomeState();
}

class _DownloadHomeState extends State<DownloadHome> {
  @override
  Widget build(BuildContext context) {
    // Widget rowbutton(String title, VoidCallback onpressed) {
    //   return Padding(
    //     padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 25.0),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: InkWell(
    //         onTap: onpressed,
    //         child: Container(
    //           color: Colors.indigo,
    //           height: MediaQuery.of(context).size.height * 0.12,
    //           width: MediaQuery.of(context).size.width,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               Text(
    //                 title,
    //                 style: TextStyle(
    //                     fontFamily: "Quando", fontWeight: FontWeight.bold),
    //               ),
    //               Icon(Icons.download_done_outlined),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   );
    // }

    return Scaffold(
        // bottomNavigationBar: Container(
        //   height: MediaQuery.of(context).size.height * 0.08,
        //   child: FacebookBannerAd(
        //     keepAlive: true,
        //     placementId: "171963307955660_171964114622246",
        //     bannerSize: BannerSize.STANDARD,
        //     listener: (result, value) {
        //       print("Banner Ad: $result -->  $value");
        //     },
        //   ),
        // ),
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.card_giftcard,
                size: 40,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        elevation: 0,
//    leading: IconButton(
//    icon: Icon(
//    Icons.arrow_back_ios,
//    color: Color(0xFF090C22),
//    size: 20,
//    ),
//    onPressed: () => Navigator.of(context).pop(),
//    ),
        pinned: true,
        expandedHeight:
            MediaQuery.of(context).orientation == Orientation.portrait
                ? 250.0
                : 150.0,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            "images/download1.png",
            fit: BoxFit.cover,
          ),
          title: Text("PDF Download"),
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        sliver: SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Wrap(
              children: [
                MyContainer(
                  num: 1,
                  titles: "Syllabus",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloads(
                                  num: 0,
                                )));
                  },
                  imageurl: "images/syllabus.jpg",
                ),
                MyContainer(
                  num: 1,
                  titles: "Mock Test",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloads(
                                  num: 1,
                                )));
                  },
                  imageurl: "images/qna.jpg",
                ),
                MyContainer(
                  num: 1,
                  titles: "Mock Test Answers ",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloads(
                                  num: 2,
                                )));
                  },
                  imageurl: "images/qna.jpg",
                ),
                MyContainer(
                  num: 1,
                  titles: "Solved Sets ",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloads(
                                  num: 3,
                                )));
                  },
                  imageurl: "images/notes.jpg",
                ),
                MyContainer(
                  num: 1,
                  titles: "Model Questions ",
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloads(
                                  num: 4,
                                )));
                  },
                  imageurl: "images/literature.png",
                ),
                // MyContainer(
                //   titles: "सामान्य ज्ञान",
                //   onpressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => Download(
                //                 // number: 5,
                //                 )));
                //   },
                //   imageurl: "images/3.png",
                // ),
                // rowbutton(" दोस्रो पत्रको लागि PDF नोट ", () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Download(
                //               // number: 6,
                //               )));
                // }),
                // rowbutton(" Question Bank ", () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Download(
                //               // number: 7,
                //               )));
                // }),
                // rowbutton("All Downloaded PDF files", () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => DownloadsPage()));
                // }
                // )
              ],
            )
          ]),
        ),
      )
    ]));
  }
}
