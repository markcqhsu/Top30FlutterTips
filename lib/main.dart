import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Pages/richtextdemo.dart';
import './Pages/flexibledemo.dart';
import './Pages/expandeddemo.dart';
import './Pages/fittedboxdemo.dart';
import './Pages/snackbardemo.dart';
import './Pages/visibilitydemo.dart';
import './Pages/cliprectdemo.dart';
import './Pages/animatedicondemo.dart';
import 'Pages/animatedcontainerdemo.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.orangeAccent,
    systemNavigationBarColor: Colors.orangeAccent,
  ),);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/AnimatedContainerDemo",
      routes: {
        "/RichText":(context) => const RichTextDemo(title:"Richtext"),
        "/FlexibleDemo":(context) => const FlexibleDemo(title:"FlexibleDemo"),
        "/ExpandedDemo":(context) => const ExpandedDemo(title:"ExpandedDemo"),
        "/FittedBoxDemo":(context) => const FittedBoxDemo(title:"FittedBoxDemo"),
        "/SnackBarDemo":(context) => const SnackBarDemo(title:"SnackBarDemo"),
        "/VisibilityDemo":(context) => const VisibilityDemo(title:"VisibilityDemo"),
        "/ClipRectDemo":(context) => const ClipRectDemo(title:"ClipRectDemo"),
        "/AnimatedIconDemo":(context) => const AnimatedIconDemo(title:"AnimatedIconDemo"),
        "/AnimatedContainerDemo":(context) => const AnimatedContainerDemo(title:"AnimatedContainerDemo"),
      },
    );
  }
}