import 'dart:convert';
import 'dart:ffi';

// import 'package:firebase_admob/firebase_admob.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart' as launch;
// import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class YTPlaylist extends StatefulWidget {
  final String? url;
  final String? title;
  YTPlaylist({this.title, this.url});

  @override
  _YTPlaylistState createState() => _YTPlaylistState();
}

class _YTPlaylistState extends State<YTPlaylist> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(widget.url!));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // InterstitialAd(adUnitId: "ca-app-pub-9510861237106695/2394283413")
        //   ..load()
        //   ..show();
        Navigator.pop(context);
        throw nullptr;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        appBar: AppBar(
          title: new Text(widget.title!),
          centerTitle: true,
        ),
        body: FutureBuilder<List>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? new ListVideo(
                    list: snapshot.data!,
                  )
                : new Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}

class ListVideo extends StatelessWidget {
  List? list;
  ListVideo({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list!.length,
        itemBuilder: (context, i) {
          return new Container(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    launch.launch(
                        "https://youtube.com/embed/${list?[i]['contentDetails']['videoId']}",
                        customTabsOption: launch.CustomTabsOption(
                          toolbarColor: Theme.of(context).primaryColor,
                          enableDefaultShare: true,
                          enableUrlBarHiding: true,
                          showPageTitle: true,
                          animation: launch.CustomTabsSystemAnimation.slideIn(),
                          extraCustomTabs: const <String>[
                            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
                            'org.mozilla.firefox',
                            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
                            'com.microsoft.emmx',
                          ],
                        ));
                  },
                  //  Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (BuildContext context) => new VideoPlay(
                  //           url:
                  //               "https://youtube.com/embed/${list?[i]['contentDetails']['videoId']}",
                  //         )
                  //         )
                  // ),
                  child: Container(
                    height: 210,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(list?[i]['snippet']
                                ['thumbnails']['high']['url']),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    list?[i]['snippet']['title'],
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                new Divider(),
              ],
            ),
          );
        });
  }
}

// class VideoPlay extends StatelessWidget {
//   final String? url;
//   VideoPlay({this.url});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: WebView(
//           initialUrl: url,
//           javascriptMode: JavascriptMode.unrestricted,
//         ),
//         //   child: WebviewScaffold(
//         //     url: url),
//       ),
//     );
//   }
// }

// import 'dart:convert';
// //for playing video in webview
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// //for youtubeplayer
// //import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class YTPlaylist extends StatefulWidget {
//   final String title;
//   final String url;
//   YTPlaylist({this.title, this.url});
//   @override
//   _YTPlaylistState createState() => _YTPlaylistState();
// }

// class _YTPlaylistState extends State<YTPlaylist> {
//   Future<List> getData() async {
//     final response = await http.get(widget.url);
//     return json.decode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//           centerTitle: true,
//         ),
//         body: FutureBuilder<List>(
//             future: getData(),
//             builder: (context, snapshot) {
//               if (snapshot.hasError) print(snapshot.error);
//               return snapshot.hasData
//                   ? new ListVideo(
//                       list: snapshot.data,
//                     )
//                   : Center(child: new CircularProgressIndicator());
//             }));
//   }
// }

// class ListVideo extends StatelessWidget {
//   final List list;
//   ListVideo({this.list});
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: list == null ? 0 : list.length,
//         itemBuilder: (context, i) {
//           return Container(
//             height: 210,
//             padding: EdgeInsets.all(10.0),
//             child: new Column(
//               children: <Widget>[
//                 GestureDetector(
//                   // onTap: () => Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //         builder: (context) => VideoPlay(
//                   //               //for webview
//                   //               url:
//                   //                   "https://youtube.com/embed/${list[i]['contentDetails']['videoId']}",
//                   //               //for youtubeplayer
//                   //               //url: list[i]['contentDetails']['videoId'],
//                   //             ))),
//                   child: new Container(
//                       decoration: new BoxDecoration(
//                           image: new DecorationImage(
//                               image: NetworkImage(list[i]['snippet']
//                                   ['thumbnails']['high']['url']),
//                               fit: BoxFit.cover))),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     list[i]['snippet']['title'],
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.all(10)),
//                 new Divider(),
//               ],
//             ),
//           );
//         });
//   }
// }

// // class VideoPlay extends StatelessWidget {
// //   final String url;
// //   VideoPlay({this.url});
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: WebviewScaffold(
// //         url: url,
// //       ),
// //     );
// //   }
// // }
// //for youtube player

// // class VideoPlay extends StatefulWidget {
// //   final String url;
// //   VideoPlay({this.url});
// //   @override
// //   _VideoPlayState createState() => _VideoPlayState(url);
// // }

// // class _VideoPlayState extends State<VideoPlay> {
// //   var url;
// //   _VideoPlayState(this.url);

// //   YoutubePlayerController _controller;
// //   @override
// //   void initState() {
// //     _controller = YoutubePlayerController(initialVideoId: url);
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         body: Container(
// //       child: Column(
// //         children: <Widget>[
// //           Center(
// //             child: YoutubePlayer(
// //               controller: _controller,
// //             ),
// //           )
// //         ],
// //       ),
// //     ));
// //   }
// // }
