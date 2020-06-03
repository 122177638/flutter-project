
import 'package:flutter/material.dart';
import 'package:ft_project/api/httpRequest.dart';

class Global {
  /// navigatorKey
  static GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  /// 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  /// Api地址
  static String apiBaseURL = 'https://www.baidu.com';

  /// 初始化全局信息，会在APP启动时执行
  static init() async {
    print('app init');
    Http.init();
  }
}