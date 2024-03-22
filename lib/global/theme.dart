import 'package:flutter/material.dart';

ThemeData lightMode =ThemeData(
  brightness: Brightness.light,
  //appBarTheme: AppBarTheme(color: Colors.white),
  
  colorScheme:  const ColorScheme.light(
    
    background: Colors.white,//Colors.grey.shade400,
    primary:  Colors.white,//Colors.grey.shade300,
    secondary: Colors.white //Colors.grey.shade200
  )
);


ThemeData darkMode =ThemeData(
  brightness: Brightness.dark,
  //appBarTheme: AppBarTheme(color: Colors.grey.shade900),
  colorScheme:  ColorScheme.dark(
    background: Colors.grey.shade900,
    primary:  const Color.fromARGB(255, 79, 15, 15),
    secondary: Colors.grey.shade700
  )
);