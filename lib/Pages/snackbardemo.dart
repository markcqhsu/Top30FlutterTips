import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  final String title;

  const SnackBarDemo({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("This is the snackBar"),
                  ),
                );
              },
              child: Image.asset("asstes/images/ponyo028.jpeg"),
            ),
          ),
        ));
  }
}
