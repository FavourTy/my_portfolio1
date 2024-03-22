// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';

class MiDivder extends StatefulWidget {
  const MiDivder({super.key});

  @override
  _MiDivderState createState() => _MiDivderState();
}

class _MiDivderState extends State<MiDivder> {
  late Color dividerColor;
  late Timer timer;
  final List<Color> colors = [
    Colors.pink,
    Colors.blue,
    Colors.purple,
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    dividerColor = colors[currentIndex];
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % colors.length;
        dividerColor = colors[currentIndex];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Divider(
        color: dividerColor,
        thickness: 2.0,
        height: 30.0,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
}
