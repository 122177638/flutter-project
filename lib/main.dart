
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ft_project/store/app-module.dart' show AppModule;
import 'package:ft_project/store/locale-module.dart' show LocaleModule;
import 'package:ft_project/store/theme-module.dart' show ThemeModule;
import 'app.dart' show App;
import 'package:provider/provider.dart';
import 'common/flutter-error.dart' show collectLog,makeDetails,reportErrorAndLog;
void main() {
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   reportErrorAndLog(details);
  // };
  runZoned(
    () => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: AppModule()),
          ChangeNotifierProvider.value(value: LocaleModule()),
          ChangeNotifierProvider.value(value: ThemeModule()),
        ],
        child: App()
      )),
    // zoneSpecification: ZoneSpecification(
    //   print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
    //     collectLog(line); // 收集日志
    //   },
    // ),
    // onError: (Object obj, StackTrace stack) {
    //   var details = makeDetails(obj, stack);
    //   reportErrorAndLog(details);
    // },
  );
}