import 'package:my_portfollio/global/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData  _themeData = lightMode;

  ThemeData get themedata => _themeData;

  set themeData (ThemeData themeData){

    _themeData = themeData;
    notifyListeners();
  }
  void toogleTheme () {

    if (_themeData == lightMode){
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }
}