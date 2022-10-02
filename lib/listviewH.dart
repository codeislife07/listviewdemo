import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listViewH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    width: 100,
                    child: Center(
                      child: Text(index.toString()),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
