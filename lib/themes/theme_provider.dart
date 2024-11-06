import 'package:flutter/material.dart';

import 'package:simple_chat_app/themes/dark_mode.dart';
import 'package:simple_chat_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  dynamic get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;

  set ThemeData(ThemeData themeData) {
    _themeData = _themeData;
    notifyListeners();
  }
}
