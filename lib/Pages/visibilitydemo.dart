import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisibilityDemo extends StatefulWidget {
  const VisibilityDemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _VisibilityDemoState createState() => _VisibilityDemoState();
}

class _VisibilityDemoState extends State<VisibilityDemo> {
  String get title => "";
  bool isVisible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });

            },
            child: const Text("Button1"),
          ),
          Visibility(
            visible: isVisible,
            child: Image.asset("asstes/images/ponyo028.jpeg"),
          ),
          ElevatedButton(
            onPressed: () {
            },
            child: const Text("Button2"),
          ),
        ],
      ),
    );
  }
}
