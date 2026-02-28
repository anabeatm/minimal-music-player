import 'package:flutter/material.dart';
import 'package:minimal_music_player/themes/light_mode.dart';
import 'package:minimal_music_player/themes/dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // light mode
  ThemeData _themeData = lightMode;
  // get
  ThemeData get themeData => _themeData;

  // is dark
  bool get isDarkMode => _themeData == darkMode;

  // set
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // update the UI
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
