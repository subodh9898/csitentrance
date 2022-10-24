// import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import '../datas/practicepagedata.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter/services.dart';

class PracticePage extends StatefulWidget {
  final int? num;
  final String? title;
  final String? subtitle;

  PracticePage({Key? key, this.num, this.subtitle, this.title})
      : super(key: key);

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  Color colortoshow = Colors.indigo;
  Color right = Colors.green;
  Color wrong = Colors.red;
  Map<String, Color> btncolor = {
    "a": Colors.indigo,
    "b": Colors.indigo,
    "c": Colors.indigo,
    "d": Colors.indigo,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // bottomNavigationBar: Container(
        //   child: FacebookBannerAd(
        //     placementId: "832688867574510_832689264241137",
        //     bannerSize: BannerSize.STANDARD,
        //     listener: (result, value) {
        //       print("Banner Ad: $result -->  $value");
        //     },
        //   ),
        //   height: MediaQuery.of(context).size.height * 0.06,
        // ),
        appBar: AppBar(title: Text(widget.title!), centerTitle: true),
        body: ListView.builder(
          itemCount: quesans[widget.num!].length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Wrap(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      quesans[widget.num!][index]['question'],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MaterialButton(
                            child:
                                Text(quesans[widget.num!][index]['option a']),
                            minWidth: 225,
                            color: colortoshow,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          SizedBox(width: 15),
                          MaterialButton(
                            child:
                                Text(quesans[widget.num!][index]['option b']),
                            minWidth: 225,
                            color: colortoshow,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          SizedBox(width: 15),
                          MaterialButton(
                            child:
                                Text(quesans[widget.num!][index]['option c']),
                            minWidth: 225,
                            color: colortoshow,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          SizedBox(width: 15),
                          MaterialButton(
                            child:
                                Text(quesans[widget.num!][index]['option d']),
                            minWidth: 225,
                            color: colortoshow,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                          SizedBox(width: 15),
                          MaterialButton(
                            //quesans[widget.num][index]['option d']
                            child: Text("Answer"),
                            minWidth: 225,
                            color: right,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        height: 210,
                                        child: Padding(
                                          padding: EdgeInsets.all(12),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'CSIT Entrance Preparation',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Alike',
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(
                                                'Correct Answer',
                                                style: TextStyle(
                                                    fontFamily: 'Quando',
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Text(quesans[widget.num!][index]
                                                  ['answer']),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  RaisedButton(
                                                    onPressed: () {
                                                      launch(
                                                          quesans[widget.num!]
                                                                  [index]
                                                              ['solution']);
                                                    },
                                                    child: Text('Learn more'),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  RaisedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text('okay'),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                        ])),
              ),
            );
          },
        ));
  }
}
