// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:my_portfollio/global/theme_provider.dart';

import '../global/controller/controller.dart';

class AppMode extends  GetView<HomeController> {
  const AppMode({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleTheme();
      },
      child: const Icon(Icons.light_mode),
    );
  }
}