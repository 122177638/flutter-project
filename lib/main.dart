import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ft_project/common/global.dart';
// import 'package:ft_project/common/log.dart' show collectLog, makeDetails, reportErrorAndLog;
import 'package:ft_project/store/app-module.dart' show AppModule;
import 'package:ft_project/store/locale-module.dart' show LocaleModule;
import 'package:ft_project/store/theme-module.dart' show ThemeModule;
import 'app.dart' show App;
import 'package:provider/provider.dart';

void main() {
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   reportErrorAndLog(details);
  // };
  Global.init().then((_) => runZoned(
        () => runApp(MultiProvider(providers: [
          ChangeNotifierProvider.value(value: AppModule()),
          ChangeNotifierProvider.value(value: LocaleModule()),
          ChangeNotifierProvider.value(value: ThemeModule()),
        ], child: App())),
        // zoneSpecification: ZoneSpecification(
        //   print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        //     collectLog(line); // 收集日志
        //   },
        // ),
        // onError: (Object obj, StackTrace stack) {
        //   var details = makeDetails(obj, stack);
        //   reportErrorAndLog(details);
        // },
      ));
}
