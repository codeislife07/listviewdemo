import 'package:flutter/material.dart';
import 'package:listviewdemo/listviewH.dart';
import 'package:listviewdemo/listviewV.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<Homescreen> {
  int initpostion = 0;
  var screen = [listViewH(), listViewV()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: initpostion,
          onTap: (value) {
            setState(() {
              initpostion = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Listview Horizontal"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Listview Vertical")
          ]),
      body: screen[initpostion],
    );
  }
}
