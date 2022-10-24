import 'package:flutter/material.dart';
import 'package:csitentrance/quiz/quizpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget customwidget(String setno, String leadingno, String subtitle) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return Getjson(setno);
        }));
      },
      title: Text(setno),
      subtitle: Text(subtitle),
      selected: false,
      leading:
          CircleAvatar(backgroundColor: Colors.indigo, child: Text(leadingno)),
      trailing: Icon(Icons.chevron_right),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(" Quiz"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            customwidget("Quiz set 1", "1", "Physics"),
            customwidget("Quiz set 2", "2", " Physics"),
            customwidget("Quiz set 3", "3", "Physics"),
            customwidget("Quiz set 4", "4", " Physics"),
            customwidget("Quiz set 5", "5", " Physics"),
            customwidget("Quiz set 6", "6", "English"),
            customwidget("Quiz set 7", "7", " English"),
            customwidget("Quiz set 8", "8", "English"),
            customwidget("Quiz set 9", "9", "English"),
            customwidget("Quiz set 10", "10", "English"),
            customwidget("Quiz set 11", "11", "Chemistry"),
            customwidget("Quiz set 12", "12", "Chemistry"),
            customwidget("Quiz set 13", "13", "Chemistry"),
            customwidget("Quiz set 14", "14", "Chemistry"),
            customwidget("Quiz set 15", "15", "Chemistry"),
            customwidget("Quiz set 16", "16", "Maths"),
            customwidget("Quiz set 17", "17", "Maths"),
            customwidget("Quiz set 18", "18", "Maths"),
            customwidget("Quiz set 19", "19", "Maths"),
            customwidget("Quiz set 20", "20", "Maths"),
          ],
        ));
  }
}
