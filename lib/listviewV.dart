import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listViewV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vertical"),
      ),
      body: ListView.builder(
        //scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              width: 100,
              height: 200,
              child: Center(
                child: Text(index.toString()),
              ));
        },
      ),
    );
  }
}
