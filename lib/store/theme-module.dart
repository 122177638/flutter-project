import 'package:flutter/material.dart';

class ThemeModule with ChangeNotifier{
  Color theme = Colors.red;

  List<Color> themeColors = [
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.yellow
  ];

  void themeChange(Color _theme) {
    theme = _theme;
    notifyListeners();
  }
}