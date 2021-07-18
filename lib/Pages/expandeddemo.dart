import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  final String title;

  const ExpandedDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            height: 100,
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),
        ],
      ),
    );
  }
}
