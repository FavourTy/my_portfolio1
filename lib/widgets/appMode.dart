// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../global/controller/controller.dart';

class AppMode extends  GetView<HomeController> {
  const AppMode({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleTheme();
      },
      child: Material(
        color: Colors.transparent,
        child: Obx(() => Icon(
          controller.isDarkMode.value ? Icons.dark_mode : Icons.light_mode,
        )),
      ),

    );
  }
}