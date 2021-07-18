import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  final String title;

  const FlexibleDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
