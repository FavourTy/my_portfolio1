import 'package:animated_path/animated_path.dart';
import 'package:flutter/material.dart';
import 'package:my_portfollio/views/pathfile.dart';

class AnimatedAdetayo extends StatefulWidget {
  const AnimatedAdetayo({super.key});

  @override
  State<AnimatedAdetayo> createState() => _AnimatedAdetayoState();
}

class _AnimatedAdetayoState extends State<AnimatedAdetayo> with SingleTickerProviderStateMixin {

late final AnimationController animationController;
  late final Animation<double> firstAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    firstAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    );

    // Start the animation
    animationController.forward();
  }

  @override
  void dispose() {
    // Don't forget to dispose the controller when the widget is removed from the widget tree
    animationController.dispose();
    super.dispose();
  }


 Paint get paint => Paint()
    ..color = Colors.white
    ..strokeWidth = 2.0
    ..strokeCap = StrokeCap.round
    ..style = PaintingStyle.stroke;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buildWord(flutter)
        )
      ) 
    );
  }


  List<Widget> buildWord(List<Path> letter, {Offset offset = const Offset(200, 400)}) {
    return [
      ...letter
          .map(
            (e) => AnimatedPath(
              animation: firstAnimation,
              path: Path()..addPath(e, offset),
              paint: paint,
              end: Tween(begin: 0.0, end: 1.0),
              offset: Tween(begin: -0.8, end: 0.0),
            ),
          )
          .toList(),
      ...letter
          .map(
            (e) => AnimatedPath(
              animation: firstAnimation,
              path: Path()..addPath(e, offset),
              paint: paint, //..style = PaintingStyle.fill,
              start: Tween(begin: 0.0, end: 0.7),
              end: Tween(begin: 0.1, end: 1.0),
              offset: Tween(begin: 0.0, end: 0.3),
            ),
          )
          .toList(),
    ];
  }
}