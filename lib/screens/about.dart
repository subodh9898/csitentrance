import 'package:flutter/material.dart';
//import 'package:launch_review/launch_review.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height*0.08,
        ),
        appBar: AppBar(
          title: Text(
            'About',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Card(
                  elevation: 3.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 140.0,
                        width: 140.0,
                        padding: EdgeInsets.all(20.0),
                        child: Image.asset('images/good.png'),
                      ),
                      Text(
                        'CSIT Entrance App',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade800,
                            fontFamily: 'Poppins'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5.0, top: 10.0),
                        padding: EdgeInsets.fromLTRB(18.0, 5.0, 18.0, 18.0),
                        child: Text(
                          "CSIT Entrance App is designed to help students appearing on TU Entrance for BSCCSIT. In this app you can take offline quiz of every subject. similarly, You can watch important videos online and there is FAQ to solve your almost all queries related to BSCCSIT. There are all old questions and lot of sets of practice question. \n\n This is an experimental Project of our team. So, Feel free to give us feedback for the improvement of the app. \n \nPlease note that we dont own the every content in this app, Some of the content presented in this app are accumulated from the internet. At last, we would like to thank Samir Phuyal, Ayush Bhattarai and Nirdesh Pokhrel for helping us in need. We hope this app will be helpful for you to prepare for CSIT Entrance.  Best of luck!!! ",
                          style: TextStyle(
                              fontSize: 15.0,
                              letterSpacing: 0.4,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // height: 110.0,
              margin: EdgeInsets.only(bottom: 4.0),
              padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 18.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(80.0))),
                elevation: 4.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: 80.0,
                      height: 80.0,
                      margin: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/bibek.jpg'))),
                    ),
                    Container(
                        child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding:
                              EdgeInsets.only(top: 5.0, left: 10.0, bottom: 0),
                          child: Text(
                            'App Developer',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade800,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 4.0),
                          child: Text(
                            '- Bibek Acharya',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  launch(
                                      'https://www.facebook.com/bibekacharya955');
                                },
                                icon: Icon(
                                  FontAwesomeIcons.facebook,
                                  //MdiIcons.facebookBox,
                                  color: Colors.blue,
                                  size: 30.0,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  launch(
                                      'https://www.youtube.com/channel/UCy_Gd-1bcudhHXMIsbil7Iw');
                                },
                                icon: Icon(
                                  FontAwesomeIcons.linkedin,
                                  //MdiIcons.youtube,
                                  color: Colors.blueAccent,
                                  size: 33.0,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  launch(
                                      'https://www.youtube.com/channel/UCy_Gd-1bcudhHXMIsbil7Iw');
                                },
                                icon: Icon(
                                  FontAwesomeIcons.instagram,
                                  //MdiIcons.youtube,
                                  color: Colors.red,
                                  size: 33.0,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  launch(
                                      'https://www.youtube.com/channel/UCy_Gd-1bcudhHXMIsbil7Iw');
                                },
                                icon: Icon(
                                  FontAwesomeIcons.youtube,

                                  //MdiIcons.youtube,
                                  color: Colors.red,
                                  size: 33.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
