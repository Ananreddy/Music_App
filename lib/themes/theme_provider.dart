import 'package:flutter/material.dart';
import 'package:music_app/themes/dark_mode.dart';
import 'package:music_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{   // corrected Capital c
  //initially,Light Mode
  ThemeData _themeData =lightmode;
  // get theme
  ThemeData get themedata => _themeData;
  // is dark mode  or not
  bool get isDarkMode => _themeData == darkmode;

  //set theme
  set themeData(ThemeData themeData) {
         _themeData=themeData;

         //update ui

         notifyListeners();

  }
    //toggle theme

    void toggleTheme() 
    {
      if (_themeData == lightmode)
    {
        themeData= darkmode;
    } else {
      themeData=lightmode;
    }
  }
}