import 'dart:ffi';
// import 'dart:io';
// import 'dart:isolate';
import 'dart:ui';

// import 'package:awesome_page_transitions/awesome_page_transitions.dart';
// import 'package:connectivity/connectivity.dart';
// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
// import 'package:flutter_downloader/flutter_downloader.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
// import 'package:csitentrance/download/downloadedviewscreen.dart';
import 'package:csitentrance/download/pdfprovider.dart';

class Downloads extends StatefulWidget {
  final int? num;

  const Downloads({Key? key, this.num}) : super(key: key);
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
//  _DownloadState({this.number});
  String? download;

  // Future<void> _showMyDialog() async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text(
  //           "Loksewa Tayari",
  //           style: TextStyle(
  //             color: Color(0xFF4ea685),
  //           ),
  //         ),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text('Already downloaded...'),
  //               Text('Would you like to go to the Downloads page?')
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Yes'),
  //             onPressed: () {
  //               Navigator.push(
  //                 context,
  //                 AwesomePageRoute(
  //                   enterPage: DownloadsPage(),
  //                   transitionDuration: Duration(milliseconds: 600),
  //                   exitPage: widget,
  //                   transition: CubeTransition(),
  //                 ),
  //               ).then((result) {
  //                 Navigator.of(context).pop();
  //               });
  //             },
  //           ),
  //           TextButton(
  //             child: Text('No'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // Future<void> _showMyDialog2() async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text(
  //           'No internet',
  //         ),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text('Please check your internet connection...')
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Ok'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  // Future<void> downloadFiles() async {
  //   var dir = await getExternalStorageDirectory();
  //   String localPath = '${dir.path}/pdf/';
  //   final savedDir = Directory(localPath);
  //   bool hasExisted = await savedDir.exists();
  //   if (!hasExisted) {
  //     savedDir.create();
  //   }
  //   await FlutterDownloader.enqueue(
  //     url: download,
  //     savedDir: localPath,
  //     fileName: '$booksSaveName.pdf',
  //     showNotification:
  //     true, // show download progress in status bar (for Android)
  //     openFileFromNotification:
  //     true, // click on notification to open downloaded file (for Android)
  //   );
  // }

  // ReceivePort _port = ReceivePort();
  @override
  void initState() {
    // IsolateNameServer.registerPortWithName(
    //     _port.sendPort, 'downloader_send_port');
    // _port.listen((dynamic data) {
    //   String id = data[0];
    //   DownloadTaskStatus status = data[1];
    //   int progress = data[2];
    //   print(progress);
    //   setState(() {});
    // });
    //
    // FlutterDownloader.registerCallback(downloadCallback);
    super.initState();
  }

  @override
  void dispose() {
    // IsolateNameServer.removePortNameMapping('downloader_send_port');

    super.dispose();
  }

  // static void downloadCallback(
  //     String id, DownloadTaskStatus status, int progress) {
  //   final SendPort send =
  //   IsolateNameServer.lookupPortByName('downloader_send_port');
  //   send.send([id, status, progress]);
  // }

  @override
  Widget build(BuildContext context) {
    final books = Provider.of<PdfProvider>(context);
    final downloadList = books.alldownloads[widget.num!];

    return WillPopScope(
      onWillPop: () {
        // InterstitialAd(adUnitId: "ca-app-pub-2061019967147177/9503735171")
        //   ..load()
        //   ..show();
        Navigator.pop(context);
        throw nullptr;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          // child: FacebookBannerAd(
          //   keepAlive: true,
          //   placementId: "171963307955660_171964114622246",
          //   bannerSize: BannerSize.STANDARD,
          //   listener: (result, value) {
          //     print("Banner Ad: $result -->  $value");
          //   },
          // ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Color(0xFF090C22),
                    ),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                ),
              ],
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF090C22),
                  size: 20,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              downloadList[index].name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: downloadList[index].size == 00
                                    ? Colors.grey
                                    : Color(0xFF090C22),
                              ),
                            ),
                            downloadList[index].size == 00
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      'Not available',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () async {
                                      download = await downloadList[index]
                                          .downloadLink;

                                      launch(download!,
                                          customTabsOption: CustomTabsOption(
                                            toolbarColor:
                                                Theme.of(context).primaryColor,
                                            enableDefaultShare: true,
                                            enableUrlBarHiding: true,
                                            showPageTitle: true,
                                          )
                                          // animation: CustomTabsAnimation()

                                          // or user defined animation.
                                          // animation: const CustomTabAnimation(
                                          // startEnter: 'slide_up',
                                          // startExit: 'android:anim/fade_out',
                                          // endEnter: 'android:anim/fade_in',
                                          // endExit: 'slide_down',
                                          // ),
                                          // )

                                          );
                                      // booksSaveName = await downloadList[index]
                                      //     .bookSaveName;
                                      // versionName =
                                      // await downloadList[index].name;
                                      // var checkDir =
                                      // await getExternalStorageDirectory();
                                      // String savePath =
                                      //     "${checkDir.path}/pdf/$booksSaveName.pdf";
                                      // if (await File(savePath).exists()) {
                                      //   print("File exists");
                                      //   _showMyDialog();
                                      // } else {
                                      //   print("File don't exists");
                                      //   var connectivityResult =
                                      //   await (Connectivity()
                                      //       .checkConnectivity());
                                      //   if (connectivityResult ==
                                      //       ConnectivityResult.mobile) {
                                      //     downloadFiles();
                                      //     final snackBar = SnackBar(
                                      //       backgroundColor: Color(0xFF090C22),
                                      //       content: Text(
                                      //           'pdf is downloading with mobile data'),
                                      //     );
                                      //
                                      //     Scaffold.of(context)
                                      //         .showSnackBar(snackBar);
                                      //   } else if (connectivityResult ==
                                      //       ConnectivityResult.wifi) {
                                      //     downloadFiles();
                                      //     final snackBar = SnackBar(
                                      //       backgroundColor: Color(0xFF090C22),
                                      //       content: Text(
                                      //           'neptechpal.com  ($booksSaveName) is downloading with wifi'),
                                      //     );
                                      //
                                      //     Scaffold.of(context)
                                      //         .showSnackBar(snackBar);
                                      //   } else {
                                      //     _showMyDialog2();
                                      //   }
                                      // }
                                    },
                                    child: Tooltip(
                                      message: 'Click to download',
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.file_download,
                                            color: Color(0xFF4ea685),
                                          ),
                                          Text(
                                            downloadList[index]
                                                    .size
                                                    .toString() +
                                                ' MB',
                                            style: TextStyle(
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: downloadList.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
