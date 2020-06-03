import 'package:flutter/material.dart';
import 'package:ft_project/common/global.dart';
import 'package:ft_project/store/locale-module.dart';
import 'package:ft_project/store/theme-module.dart';
import 'package:provider/provider.dart';
import 'router/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'i10n/localization_intl.dart' show I10nDelegate,I10n;
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    LocaleModule localeModule = Provider.of<LocaleModule>(context);
    ThemeModule themeModule = Provider.of<ThemeModule>(context);
    return new MaterialApp(
      navigatorKey: Global.navigatorKey,
      onGenerateTitle: (context){
        // 此时context在Localizations的子树中
        return I10n.of(context).title;
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        I10nDelegate()
      ],
      supportedLocales: localeModule.supportedLocales,
      localeResolutionCallback: (_locale, supportedLocales) {
        if(_locale == null) return null;
        if(localeModule.getLocale != null){
          return localeModule.getLocale;
        } else {
          Locale locale;
          if (supportedLocales.contains(_locale)) {
            locale = _locale;
          } else {
            // 未匹配系统语言，默认中文简体
            locale = Locale('zh', 'CN');
          }
          /// 由于第一次获取locale值为null,设置初始化选中的语言并且不更新widget */
          localeModule.localeChange(locale.toString());
          return locale;
        }
      },
      builder: (context, widget) {
        return MediaQuery(
          //设置文字大小不随系统设置改变
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget,
        );
      },
      locale: localeModule.getLocale,
      theme: ThemeData(
        primarySwatch: themeModule.theme,
      ),
      initialRoute: '/',
      title: '学习flutter',
      routes: createRoutes(context),
    );
  }
}