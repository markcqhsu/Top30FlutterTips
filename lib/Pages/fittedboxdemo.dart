import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  final String title;

  const FittedBoxDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.blueAccent,
        height: 300,
        child: FittedBox(
          child: Text(
            "FittedBox",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
