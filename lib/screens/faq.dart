import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
      ),
      appBar: AppBar(backgroundColor: Colors.indigo, title: Text(" FAQ")),
      body: FAQItems(),
    );
  }
}

class FAQItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Card qnatiles(String title, String des, String number) {
      return Card(
        child: ExpansionTile(
          leading: CircleAvatar(
              backgroundColor: Colors.indigo, child: Text("$number")),
          title: Text(
            "$title",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          children: <Widget>[
            Divider(
              height: 0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("$des"),
            )
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: <Widget>[
          qnatiles(
              "What is BSC CSIT?",
              "BSC CSIT is bachelor in science computer science information and technology",
              "1"),
          qnatiles(
              "How much does it cost to study BSCCSIT ?",
              "It cost about 3 - 4 lakhs in government college and 4- 6 lakhs in private college",
              "2"),
          qnatiles("Who can study BSCSIT?",
              "The Students stuying Science in +2 can study BSCCSIT", "3"),
          qnatiles(
              "which one is best among BSC CSIT and computer Engineering?",
              "In computer Engineering you have to study engineering along with computer hardware, networking  but in CSIT you have to study only computer and it mainly focused on software.",
              "4"),
          qnatiles(
              "What are the scope of BSCCSIT?",
              "The scopes of BSCCSIT are Data Analyst, software Developer, web developer etc",
              "5"),
          qnatiles("Can i get government job by studying BSC CSIT?",
              "Of course you will get government job", "6"),
          qnatiles("Which university  BSC CSIT affilated to?",
              "BSCCSIT is affiliated with tribhuwan University", "7"),
          qnatiles(
              "When the entrance exam is taken?",
              "The date is not fixed, Usually exam is taken after IOE Exam.",
              "8"),
          qnatiles(
              "Can I pass entrance if I complete all the questions in this app?",
              "Yeah, if you complete all the sets in this app you will certainly obatin marks between (60-85)",
              "9"),
          qnatiles(
              "How many CSIT colleges are there in pokhara?",
              "There are three csit colleges PN campus,Soch College and Mount Annapurna College ",
              "10"),
          qnatiles(
              "Why there are ads in app?",
              "As I am a student ,Ads are the only way that I can offer cup of coffee to my team for their hardwork. I will remove all ads once i get job.   ",
              "11")
        ],
      )),
    );
  }
}
