import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  List<Color> colorList = [
    Colors.green,
    Colors.cyan,
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.orange,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.blue,
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.orange,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int pos) {
              return Container(
                padding: EdgeInsets.only(left: 15),
                height: 50,
                child: Text(
                  'Header ' + pos.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              );
            }),
        ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int pos) {
              return Container(
                color: pos % 2 == 0 ? Colors.pink : Colors.green,
                padding: EdgeInsets.only(left: 15),
                height: 100,
              );
            }),
        GridView.builder(
            itemCount: colorList.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: colorList[index],
                padding: EdgeInsets.only(left: 15),
                height: 80,
              );
            }),
      ],
    ));
  }
}
