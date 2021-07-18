import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({Key? key,  required this.title}) : super(key: key);
  final String title;

  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool pressed = false;
  
  @override
  Widget build(BuildContext context) {
    double height = pressed? 150:250;
    Color color = pressed? Colors.orangeAccent: Colors.blue;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: InkWell(
            onTap: (){
              setState(() {
                pressed = !pressed;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              color: color,
              width: 250,
              height: height,
            ),


          )
        ),
      ),
    );
  }
}
