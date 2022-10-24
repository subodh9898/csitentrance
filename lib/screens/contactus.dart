import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  Widget _getCard(String title, String info, String url) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () {
          launch(url);
        },
        contentPadding: EdgeInsets.all(10),
        title: Row(
          children: <Widget>[
            Icon(FontAwesomeIcons.weibo),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.greenAccent,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            info,
            style: TextStyle(
              fontSize: 15.4,
              fontWeight: FontWeight.w800,
              height: 1.3,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
      ),
      appBar: AppBar(
        title: Text('Contact'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Feel free to contact us If you need any of the following services in affordable price. ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.2,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  height: 1.3,
                ),
              ),
            ),
            _getCard(
                'Website Development',
                ' we can develop nice looking blog, news portal site, your own personal website in reasonable price.',
                'https://www.neptechpal.com'),
            _getCard(
                'Domain and hosting ',
                ' we can provide you reliable domain and hosting services from our hosting partner. ',
                'https://www.neptechpal.com'),
            _getCard(
                'Graphics designing',
                ' we can provide cool graphics to post on social media, blog, youtube(channel art, logo) and other digital platform',
                'https://www.neptechpal.com'),
            _getCard(
                'Digital Marketing Course',
                ' we can provide you digital marketing course offered by easy1up at the discounted price of rs 1000. You can sell this course to other and can make passive income.',
                'https://www.neptechpal.com'),
            _getCard(
                'Free Digital promotion',
                ' If you already have a digital asset like youtube Channel, Website, blog etc. then we can promote these content for free in our app and website',
                'https://www.neptechpal.com'),
            _getCard(
                'Blog',
                ' Our blog provides articles on technology gaming and education. You can get old question and lot of practice question set from our blog',
                'https://www.neptechpal.com'),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  launch('tel:9815126740');
                },
                leading: Icon(Icons.phone),
                title: Text('Call Us'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  launch(
                    'mailto:lostidol955@gmail.com',
                  );
                },
                leading: Icon(Icons.email),
                title: Text('Email Your Query'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  launch('mailto:lostidol955@gmail.com');
                },
                leading: Icon(Icons.feedback),
                title: Text('Send us Feedback'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  launch("https://www.facebook.com/bibekacharya955/");
                },
                leading: Icon(FontAwesomeIcons.facebook),
                title: Text('Follow us'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(),
              margin: EdgeInsets.all(10),
              child: ListTile(
                onTap: () {
                  Share.share(
                      'http://play.google.com/store/apps/details?id=com.tencent.ig');
                },
                leading: Icon(Icons.share),
                title: Text('Share'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class MyClip extends CustomClipper<Path>{
  @override
   Path getClip(Size size){
    Path path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height-50.0);
    path.quadraticBezierTo(size.width-70, size.height, size.width/2, size.height-20);
    path.quadraticBezierTo(size.width/3, size.height-32.0, 0, size.height);
    path.close();
    return path;
  }
  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return true;
  }
}*/
