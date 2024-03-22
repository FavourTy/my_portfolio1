// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_portfollio/global/theme_provider.dart';

class AppMode extends StatefulWidget {
  const AppMode({super.key});

  @override
  State<AppMode> createState() => _AppModeState();
}

class _AppModeState extends State<AppMode> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<ThemeProvider>(context, listen: false).toogleTheme();
      },
      child: const Icon(Icons.light_mode),
    );
  }
}
