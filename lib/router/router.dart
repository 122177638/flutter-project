import 'package:flutter/material.dart';

import 'package:ft_project/page/home/home-bottom-navigation.dart' show HomeBottomNavigation;
import 'package:ft_project/page/setting/setting.dart' show Setting;
import 'package:ft_project/page/setting/language.dart' show Language;
import 'package:ft_project/page/setting/theme.dart' show ThemePage;

Map<String, WidgetBuilder> createRoutes(BuildContext context) {
  return {
    '/': (BuildContext context) => HomeBottomNavigation(),
    '/setting': (BuildContext context) => Setting(),
    '/setting/language': (BuildContext context) => Language(),
    '/setting/theme': (BuildContext context) => ThemePage(),
  };
}
