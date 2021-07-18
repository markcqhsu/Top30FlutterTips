import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  final String title;

  const RichTextDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: <TextSpan>[
              TextSpan(text: "this is an example of the"),
              TextSpan(
                text: "RichText",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
