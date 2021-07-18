import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipRectDemo extends StatefulWidget {
  const ClipRectDemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ClipRectDemoState createState() => _ClipRectDemoState();
}

class _ClipRectDemoState extends State<ClipRectDemo> {
  String get title => "";
  bool isVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
