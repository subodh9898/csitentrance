// import 'dart:ffi';

// // import 'package:facebook_audience_network/facebook_audience_network.dart';
// import 'package:flutter/material.dart';
// import 'package:native_pdf_view/native_pdf_view.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:numberpicker/numberpicker.dart';

// class PDFScreen extends StatefulWidget {
//   final String? providePath;
//   PDFScreen({this.providePath});

//   @override
//   _PDFScreenState createState() => _PDFScreenState();
// }

// class _PDFScreenState extends State<PDFScreen> {
//   int _actualPageNumber = 1, _allPagesCount = 0;
//   PdfController? _pdfController;
//   bool _isInterstitialAdLoaded = false;

//   Future _showIntDialog() async {
//     await showDialog<int>(
//       context: context,
//       builder: (BuildContext context) {
//         return Column(
//           children: [
//             Text("Select Page Number"),
//             new NumberPicker(
//               // (minValue: minValue, maxValue: maxValue, value: value, onChanged: onChanged)
//               // title: Text('Select page number'),
//               onChanged: (int? value) {
//                 if (value != null) {
//                   setState(() => _actualPageNumber = value);
//                   _pdfController!.animateToPage(value,
//                       duration: Duration(milliseconds: 250),
//                       curve: Curves.ease);
//                 }
//               },
//               minValue: 1,
//               maxValue: _allPagesCount,
//               value: _actualPageNumber,
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   void initState() {
//     // FacebookAudienceNetwork.init(
//     //     testingId: "eb0661cc-d65a-4a8c-8eb5-f85d89b4b114");
//     // _loadInterstitialAd();
//     // TODO: implement initState
//     _pdfController = PdfController(
//       document: PdfDocument.openFile(widget.providePath!),
//     );

//     super.initState();
//   }

//   void _loadInterstitialAd() {
//     // FacebookInterstitialAd.loadInterstitialAd(
//     //   placementId: "832688867574510_834260920750638",
//     //   //"IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617" YOUR_PLACEMENT_ID
//     //   listener: (result, value) {
//     //     print(">> FAN > Interstitial Ad: $result --> $value");
//     //     if (result == InterstitialAdResult.LOADED)
//     //       _isInterstitialAdLoaded = true;

//     //     /// Once an Interstitial Ad has been dismissed and becomes invalidated,
//     //     /// load a fresh Ad by calling this function.
//     //     if (result == InterstitialAdResult.DISMISSED &&
//     //         value["invalidated"] == true) {
//     //       _isInterstitialAdLoaded = false;
//     //       _loadInterstitialAd();
//     //     }
//     //   },
//     // );
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _pdfController?.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () {
//         // _showInterstitialAd();
//         throw nullptr;
//       },
//       child: Scaffold(
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
//           title: Text('${widget.providePath?.split('/').last}'),
//           actions: [
//             Container(
//               margin: EdgeInsets.only(right: 20),
//               alignment: Alignment.center,
//               child: Text(
//                 '$_actualPageNumber / $_allPagesCount',
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//         body: widget.providePath == null
//             ? Center(
//                 child: Text('File not available..'),
//               )
//             : PdfView(
//                 documentLoader: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//                 pageLoader: Center(
//                   child: CircularProgressIndicator(),
//                 ),
//                 controller: _pdfController!,
//                 onDocumentError: (error) {
//                   Center(
//                     child: Text('File not available'),
//                   );
//                 },
//                 onDocumentLoaded: (document) {
//                   setState(() {
//                     _actualPageNumber = 1;
//                     _allPagesCount = document.pagesCount;
//                   });
//                 },
//                 onPageChanged: (page) {
//                   setState(() {
//                     _actualPageNumber = page;
//                   });
//                 },
//               ),
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: GestureDetector(
//                 child: Icon(LineAwesomeIcons.arrow_left),
//                 onTap: () {
//                   _pdfController?.previousPage(
//                       duration: Duration(milliseconds: 250),
//                       curve: Curves.easeOut);
//                 },
//               ),
//               title: GestureDetector(
//                 child: Text('Prev'),
//                 onTap: () {
//                   _pdfController?.previousPage(
//                       duration: Duration(milliseconds: 250),
//                       curve: Curves.easeOut);
//                 },
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: GestureDetector(
//                 child: Icon(LineAwesomeIcons.book_open),
//                 onTap: () {
//                   _showIntDialog();
//                 },
//               ),
//               title: GestureDetector(
//                 child: Text('Pages'),
//                 onTap: () {
//                   _showIntDialog();
//                 },
//               ),
//             ),
//             BottomNavigationBarItem(
//               icon: GestureDetector(
//                 child: Icon(LineAwesomeIcons.arrow_right),
//                 onTap: () {
//                   _pdfController?.nextPage(
//                       duration: Duration(milliseconds: 250),
//                       curve: Curves.easeIn);
//                 },
//               ),
//               title: GestureDetector(
//                 child: Text('Next'),
//                 onTap: () {
//                   _pdfController?.nextPage(
//                       duration: Duration(milliseconds: 250),
//                       curve: Curves.easeIn);
//                 },
//               ),
//             ),
//           ],
//           selectedItemColor: Color(0xFF090C22),
//         ),
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
