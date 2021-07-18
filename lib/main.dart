import 'package:flutter/material.dart';
import './Pages/richtextdemo.dart';
import './Pages/flexibledemo.dart';
import './Pages/expandeddemo.dart';
import './Pages/fittedboxdemo.dart';
import './Pages/snackbardemo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/SnackBarDemo",
      routes: {
        "/RichText":(context) => const RichTextDemo(title:"Richtext"),
        "/FlexibleDemo":(context) => const FlexibleDemo(title:"FlexibleDemo"),
        "/ExpandedDemo":(context) => const ExpandedDemo(title:"ExpandedDemo"),
        "/FittedBoxDemo":(context) => const FittedBoxDemo(title:"FittedBoxDemo"),
        "/SnackBarDemo":(context) => const SnackBarDemo(title:"SnackBarDemo"),
      },
    );
  }
}