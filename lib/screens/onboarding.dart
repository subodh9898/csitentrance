import 'package:csitentrance/main/mainhomepage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => MainHomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
      fontFamily: "Quando",
      fontSize: 17.0,
    );
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontFamily: "Alike",
        fontSize: 26.0,
        fontWeight: FontWeight.w500,
      ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Your Guide for CSIT Entrance Preparation  ",
          body:
              "CSIT Entrance preparation  app is full of material and resources that helps you to prepare for TU BSCCSIT ENtrance Exam. ",
          image: _buildImage('introduction'),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "",
        //   body:
        //       "Study the huge collection of GK of various categories including geography,history,sports,politics,literature etc. ",
        //   image: _buildImage('gk'),
        //   decoration: pageDecoration,
        // ),
        PageViewModel(
          title: "Play Quiz",
          body:
              "Play the multiple sets of quiz to test your knowledge in different subjects",
          image: _buildImage('playquiz'),
          decoration: pageDecoration,
        ),

        PageViewModel(
          title: "Download PDFs",
          body:
              "Download Syllabus, Model Question, Past Question and use anytime offline",
          image: _buildImage('download'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Watch Videos",
          body:
              "Watch the important Videos that helps you to pass CSIT Entrance Test",
          image: _buildImage('videos'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Practice Question",
          body:
              "There are 10 practice sets for practicing csit entrance questions",
          image: _buildImage('modelqsn'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: " College Details",
          body: "Phone number and website of CSIT Colleges Added ",
          image: _buildImage('gk'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
      done: const Text(
        'Start',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFF4ea685),
        ),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(7, 7),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFF090C22),
        activeSize: Size(16.0, 7.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
