
import 'package:flutter/material.dart';


class Notices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
      ),
      appBar: AppBar(
        title: Text("Notices"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          child: Text("Notices will be available soon"),
        ),
      ),
    );
  }
}
