import 'package:csitentrance/download/pdfprovider.dart';
import 'package:flutter/material.dart';
import 'package:csitentrance/main/splashscreen.dart';
import 'package:native_admob_flutter/native_admob_flutter.dart';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.initialize();

  // await FlutterDownloader.initialize(
  //     debug: true // optional: set false to disable printing logs to console
  //     );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkThemeEnabled = false;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: PdfProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "CSIT Entrance", theme: ThemeData(primarySwatch: Colors.indigo),
        // theme: ThemeData(primarySwatch: Colors.indigo),
        home: SplashScreen(),
      ),
    );
  }
}
