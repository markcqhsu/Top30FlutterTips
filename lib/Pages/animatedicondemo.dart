import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  bool isChnaged = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    void trigger(){
      setState(() {
        isChnaged = !isChnaged;
        isChnaged?controller.forward():controller.reverse();
      });
    }
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: 250,
            child: IconButton(
              iconSize: 150,
              onPressed: trigger,
              icon: AnimatedIcon(
                icon: AnimatedIcons.menu_home,
                color: Colors.orangeAccent,
                progress: controller,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
