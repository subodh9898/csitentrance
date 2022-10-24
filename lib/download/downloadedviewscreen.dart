// import 'dart:ffi';

// // import 'package:facebook_audience_network/facebook_audience_network.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:awesome_page_transitions/awesome_page_transitions.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// // import 'package:csitentrance/download/pdfviewscreen.dart';

// class DownloadsPage extends StatefulWidget {
//   @override
//   _DownloadsPageState createState() => _DownloadsPageState();
// }

// class _DownloadsPageState extends State<DownloadsPage> {
//   bool _isInterstitialAdLoaded = false;

//   // void _loadInterstitialAd() {
//   //   FacebookInterstitialAd.loadInterstitialAd(
//   //     placementId: "832688867574510_834260920750638s",
//   //     //"IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617" YOUR_PLACEMENT_ID
//   //     listener: (result, value) {
//   //       print(">> FAN > Interstitial Ad: $result --> $value");
//   //       if (result == InterstitialAdResult.LOADED)
//   //         _isInterstitialAdLoaded = true;

//   //       /// Once an Interstitial Ad has been dismissed and becomes invalidated,
//   //       /// load a fresh Ad by calling this function.
//   //       if (result == InterstitialAdResult.DISMISSED &&
//   //           value["invalidated"] == true) {
//   //         _isInterstitialAdLoaded = false;
//   //         _loadInterstitialAd();
//   //       }
//   //     },
//   //   );
//   // }

//   List<FileSystemEntity>? _images;
//   Future<void> getDir() async {
//     final directory = await getExternalStorageDirectory();
//     final dir = directory!.path;
//     String pdfDirectory = '$dir/pdf/';
//     final myDir = new Directory(pdfDirectory);
//     setState(() {
//       _images = myDir.listSync(recursive: true, followLinks: false);
//     });
//   }

//   Future<void> _showDeleteDialog(int index) async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(
//             'Are you sure to delete this book?',
//           ),
//           actions: <Widget>[
//             FlatButton(
//               child: Text('Yes'),
//               onPressed: () async {
//                 await _images![index].delete();
//                 getDir();
//                 Navigator.of(context).pop();
//               },
//             ),
//             FlatButton(
//               child: Text('No'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void initState() {
//     // FacebookAudienceNetwork.init();
//     // _loadInterstitialAd();
//     // TODO: implement initState
//     super.initState();
//     getDir();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () {
//         Navigator.pop(context);
//         throw nullptr;
//       },
//       child: Scaffold(
//         // bottomNavigationBar: Container(
//         //   child: FacebookBannerAd(
//         //     placementId: "832688867574510_832689264241137",
//         //     bannerSize: BannerSize.STANDARD,
//         //     listener: (result, value) {
//         //       print("Banner Ad: $result -->  $value");
//         //     },
//         //   ),
//         //   height: MediaQuery.of(context).size.height * 0.06,
//         // ),
//         appBar: AppBar(
//           elevation: 0,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back_ios,
//               color: Color(0xFF090C22),
//               size: 20,
//             ),
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//           title: Text('Downloads'),
//         ),
//         body: _images == null
//             ? Center(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20),
//                   child: Text(
//                     'No pdf files. Please download pdf books to see the downloaded list.',
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               )
//             : ListView.builder(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 25,
//                 ),
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: EdgeInsets.only(
//                       bottom: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFF2F2F2),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 18,
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   AwesomePageRoute(
//                                     enterPage: PDFScreen(
//                                       providePath: '${_images![index].path}',
//                                     ),
//                                     transitionDuration:
//                                         Duration(milliseconds: 600),
//                                     exitPage: widget,
//                                     transition: CubeTransition(),
//                                   ),
//                                 );
//                               },
//                               child: Row(
//                                 children: [
//                                   Image(
//                                     width: 30,
//                                     height: 40,
//                                     image: AssetImage(
//                                         'images/ic_launcher copy.png'),
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Expanded(
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           '${_images![index].path.split('/').last}',
//                                         ),
//                                         Text(
//                                           'Click to open',
//                                           style: TextStyle(
//                                             color: Color(0xFF4ea685),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 15,
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               _showDeleteDialog(index);
//                             },
//                             child: Icon(
//                               LineAwesomeIcons.alternate_trash,
//                               color: Colors.red,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: _images!.length,
//               ),
//       ),
//     );
//   }

//   // _showInterstitialAd() {
//   //   if (_isInterstitialAdLoaded == true)
//   //     FacebookInterstitialAd.showInterstitialAd();
//   //   else
//   //     print("Interstial Ad not yet loaded!");
//   // }
// }
