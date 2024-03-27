import 'package:flutter/material.dart';
import 'package:my_portfollio/views/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:my_portfollio/global/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: Provider.of<ThemeProvider>(context).themedata,
      
      themeMode: ThemeMode.system,
      home: const SplashScreen(),//MiTesting(),
      debugShowCheckedModeBanner: false,
    );
  }
}
