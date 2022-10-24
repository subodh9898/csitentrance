import 'package:flutter/material.dart';
import 'package:csitentrance/datas/collegedata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

const String testdevice = "mobile id";

class Colleges extends StatefulWidget {
  @override
  _CollegesState createState() => _CollegesState();
}

class _CollegesState extends State<Colleges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
      ),
      appBar: AppBar(
        title: Text("Colleges"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: colleges.length,
          itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Card(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18.0, left: 8.0),
                                child: IconButton(
                                    icon: Icon(
                                      Icons.call,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Row(
                                                children: <Widget>[
                                                  Text(
                                                    colleges[i]['phone no'],
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 70,
                                                  ),
                                                  IconButton(
                                                      icon: Icon(
                                                        Icons.call,
                                                        color: Colors.blue,
                                                      ),
                                                      onPressed: null)
                                                ],
                                              ),
                                            );
                                          }); //todo
                                      //add launch tel
                                    }),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    colleges[i]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Alike",
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(colleges[i]['adress'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: "Quando")),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Container(
                              height: 1.0,
                              width: 300.0,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.internetExplorer,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    launch(colleges[i]['website']);
                                  }),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    launch(colleges[i]['website']);
                                  },
                                  child: Text(
                                    "Website",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.locationArrow,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                        content:
                                            Text(" Maps are coming soon")));
                                  }),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    Scaffold.of(context).showSnackBar(SnackBar(
                                        content:
                                            Text(" Maps are coming soon")));
                                  },
                                  child: Text(
                                    "Map",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    // child: DecoratedBox(
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //     image: AssetImage('images/download1.png'),
                    //     fit: BoxFit.cover,
                    //   )),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: <Widget>[
                    //       Row(
                    //         children: <Widget>[
                    //           Padding(
                    //             padding: const EdgeInsets.only(top: 38.0),
                    //             child: CircleAvatar(
                    //               backgroundColor: Colors.transparent,
                    //               radius: 35,
                    //               child: Center(
                    //                   child: IconButton(
                    //                       icon: Icon(
                    //                         Icons.call,
                    //                         size: 40,
                    //                         color: Colors.white,
                    //                       ),
                    //                       onPressed: null)),
                    //             ),
                    //           ),
                    //           Column(
                    //             children: <Widget>[
                    //               SizedBox(
                    //                 height: 20,
                    //               ),
                    //               Padding(
                    //                 padding:
                    //                     const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    //                 child: Text(
                    //                   "Prithivi Narayan Campus",
                    //                   style: TextStyle(
                    //                       fontSize: 16,
                    //                       fontFamily: 'Alike',
                    //                       fontWeight: FontWeight.bold),
                    //                 ),
                    //               ),
                    //               Chip(
                    //                   backgroundColor: Colors.green,
                    //                   label: Text("Pokhara 1 bagar"))
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: <Widget>[
                    //           IconButton(
                    //             icon: Icon(
                    //               FontAwesomeIcons.facebook,
                    //               color: Colors.blue,
                    //               size: 30,
                    //             ),
                    //             onPressed: null,
                    //           ),
                    //           IconButton(
                    //             icon: Icon(Icons.ac_unit),
                    //             onPressed: null,
                    //           ),
                    //           SizedBox(
                    //             width: 15,
                    //           ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ),
                ),
              )),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_pdfview/flutter_pdfview.dart';
// import 'dart:io';
// //import 'package:getwidget/getwidget.dart';

// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';

// class Syllabus extends StatefulWidget {
//   @override
//   _SyllabusState createState() => _SyllabusState();
// }

// class _SyllabusState extends State<Syllabus> {
//   String assetPDFPath = "";

//   @override
//   void initState() {
//     super.initState();

//     getFileFromAsset("assets/sample.pdf").then((f) {
//       setState(() {
//         assetPDFPath = f.path;
//         print(assetPDFPath);
//       });
//     });
//   }

//   Future<File> getFileFromAsset(String asset) async {
//     try {
//       var data = await rootBundle.load(asset);
//       var bytes = data.buffer.asUint8List();
//       var dir = await getApplicationDocumentsDirectory();
//       File file = File("${dir.path}/sample.pdf");

//       File assetFile = await file.writeAsBytes(bytes);
//       return assetFile;
//     } catch (e) {
//       throw Exception("Error opening asset file");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Syllabus"),
//       ),
//       body: Center(
//         child: Builder(
//           builder: (context) => Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               RaisedButton(
//                 color: Colors.cyan,
//                 child: Text("View Pdf"),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) =>
//                               PdfViewPage(path: assetPDFPath)));
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PdfViewPage extends StatefulWidget {
//   final String path;

//   const PdfViewPage({Key key, this.path}) : super(key: key);
//   @override
//   _PdfViewPageState createState() => _PdfViewPageState();
// }

// class _PdfViewPageState extends State<PdfViewPage> {
//   int _totalPages = 0;
//   int _currentPage = 0;
//   bool pdfReady = false;
//   PDFViewController _pdfViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Syllabus"),
//       ),
//       body: Stack(
//         children: <Widget>[
//           PDFView(
//             filePath: widget.path,
//             autoSpacing: true,
//             enableSwipe: true,
//             pageSnap: true,
//             swipeHorizontal: true,
//             nightMode: false,
//             onError: (e) {
//               print(e);
//             },
//             onRender: (_pages) {
//               setState(() {
//                 _totalPages = _pages;
//                 pdfReady = true;
//               });
//             },
//             onViewCreated: (PDFViewController vc) {
//               _pdfViewController = vc;
//             },
//             onPageChanged: (int page, int total) {
//               setState(() {});
//             },
//             onPageError: (page, e) {},
//           ),
//           !pdfReady
//               ? Center(
//                   child: CircularProgressIndicator(),
//                 )
//               : Offstage()
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           _currentPage > 0
//               ? FloatingActionButton.extended(
//                   backgroundColor: Colors.red,
//                   label: Text("Go to ${_currentPage - 1}"),
//                   onPressed: () {
//                     _currentPage -= 1;
//                     _pdfViewController.setPage(_currentPage);
//                   },
//                 )
//               : Offstage(),
//           _currentPage + 1 < _totalPages
//               ? FloatingActionButton.extended(
//                   backgroundColor: Colors.green,
//                   label: Text("Go to ${_currentPage + 1}"),
//                   onPressed: () {
//                     _currentPage += 1;
//                     _pdfViewController.setPage(_currentPage);
//                   },
//                 )
//               : Offstage(),
//         ],
//       ),
//     );
//   }
// }
