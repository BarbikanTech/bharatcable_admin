import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setTheme(String mode) {
    if (mode == "Dark Mode") {
      _themeMode = ThemeMode.dark;
    } else if (mode == "Light Mode") {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}
