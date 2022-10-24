import 'package:flutter/material.dart';
import 'package:csitentrance/practice/practicepage.dart';
import '../datas/practicehomedata.dart';

class PracticeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
      ),
      appBar: AppBar(
        title: Text('Practice'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => TileItems(
              num: i, title: datas[i]['title'], subtitle: datas[i]['subtitle']),
          separatorBuilder: (contex, i) => Divider(
                thickness: 1,
                color: Colors.black,
              ),
          itemCount: datas.length),
    );
  }
}

class TileItems extends StatelessWidget {
  final int? num;
  final String? title;
  final String? subtitle;

  TileItems({Key? key, this.subtitle, this.num, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PracticePage(
                    num: num!, title: title!, subtitle: subtitle!)));
      },
      leading: CircleAvatar(
          child: Center(
        child: Text('${num! + 1}'),
      )),
      title: Text(title!),
      subtitle: Text(subtitle!),
    );
  }
}
