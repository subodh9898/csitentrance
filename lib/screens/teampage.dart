// import 'package:flutter/material.dart';

// class Teams extends StatefulWidget {
//   @override
//   _TeamsState createState() => _TeamsState();
// }

// class _TeamsState extends State<Teams> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         title: Text('Our Team'),
//         elevation: 0,
//       ),
//       body: SingleTeam(),
//     );
//   }
// }

// class SingleTeam extends StatefulWidget {
//   @override
//   _SingleTeamState createState() => _SingleTeamState();
// }

// class _SingleTeamState extends State<SingleTeam> {
//   Widget _card(String image, String name, String position) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: Container(
//         height: 300,
//         width: 300,
//         padding: EdgeInsets.only(top: 15),
//         child: Column(
//           children: <Widget>[
//             CircleAvatar(
//               radius: 40.0,
//               backgroundColor: Colors.blue,
//               backgroundImage: AssetImage("$image"),
//             ),
//             SizedBox(
//               height: 4,
//             ),
//             Text(
//               '$name',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 10,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             Chip(
//               label: Text(
//                 '$position',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w900,
//                   fontSize: 10,
//                 ),
//               ),
//               backgroundColor: Colors.green,
//               elevation: 4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverPadding(
//             padding: EdgeInsets.all(10.0),
//             sliver: SliverGrid(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 1,
//               ),
//               delegate: SliverChildListDelegate([
//                 _card(
//                   "images/bibek.jpg",
//                   "Bibek Acharya",
//                   "Developer",
//                 ),
//                 _card(
//                   "images/sangampdl.jpg",
//                   "Sangam Poudel",
//                   'Advisor',
//                 ),
//                 _card(
//                   "images/nabin.png",
//                   "Nabin Lamsal",
//                   "Content Creator",
//                 ),
//                 _card(
//                   "images/male1.png",
//                   "Magnus Pokhrel",
//                   "Cofounder",
//                 ),
//                 _card(
//                   "images/sangamgiri.png",
//                   "Sangam Giri",
//                   "Content Editor",
//                 ),
//                 _card(
//                   "images/female.png",
//                   "Person Name",
//                   "Position",
//                 ),
//                 _card(
//                   "images/male1.png",
//                   "Person Name",
//                   "Position",
//                 ),
//                 _card(
//                   "images/female.png",
//                   "Person Name",
//                   "Position",
//                 ),
//               ]
//               ),
//             )
//             ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../datas/teamdata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
//

class Teams extends StatefulWidget {
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height*0.08,
        ),
        appBar: AppBar(
          title: Text('Our Team'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: teammembers.length,
          itemBuilder: (context, index) {
            return Container(
              height: 170,
              width: double.infinity,
              child: Card(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.cover,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage(teammembers[index]['image']),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(
                                  teammembers[index]['name'],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Alike',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Chip(
                                  backgroundColor: Colors.green,
                                  label: Text(teammembers[index]['position']))
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                              onPressed: () {
                                launch(teammembers[index]['fblink']);
                              }),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.blue,
                                size: 30,
                              ),
                              onPressed: () {
                                launch(teammembers[index]['twilink']);
                              }),
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {
                                launch(teammembers[index]['instlink']);
                              }),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

//  targetingInfo = MobileAdTargetingInfo(
//   keywords: <String>['csit', 'education', 'entrance', 'nepal'],
//   contentUrl: 'https://flutter.io',
//   birthday: DateTime.now(),
//   childDirected: false,
//   designedForFamilies: false,
//   gender:
//       MobileAdGender.male, // or MobileAdGender.female, MobileAdGender.unknown
//   testDevMobileAdTargetingInfoices: <String>[], // Android emulators are considered test devices
// );

// BannerAd myBanner = BannerAd(
//   // Replace the testAdUnitId with an ad unit id from the AdMob dash.
//   // https://developers.google.com/admob/android/test-ads
//   // https://developers.google.com/admob/ios/test-ads
//   adUnitId: BannerAd.testAdUnitId,
//   size: AdSize.smartBanner,
//   targetingInfo: targetingInfo,
//   listener: (MobileAdEvent event) {
//     print("BannerAd event is $event");
//   },
// );
