import 'package:flutter/material.dart';

class LocaleModule with ChangeNotifier {
  /// 语言 */
  String locale = 'zh_CN';
  Locale get getLocale{
    var _localeList = locale.split('_');
    if(_localeList.length == 2){
      return Locale(_localeList[0],_localeList[1]);
    } else {
      return null;
    }
  }

    List<Map<String, String>> allSupportedLocalesList = [
    {
      'name': '中文',
      'languageCode': 'zh',
      'countryCode': 'CN',
      'localeString': 'zh_CN'
    },
    {
      'name': 'English',
      'languageCode': 'en',
      'countryCode': 'US',
      'localeString': 'en_US'
    },
  ];

  List<Locale> get supportedLocales{
    return allSupportedLocalesList.map((localeInfo) => Locale(localeInfo['languageCode'],localeInfo['countryCode'])).toList();
  }

  void localeChange(String _locale){
    if(locale != '' && locale != _locale) {
      locale = _locale;
      notifyListeners();
    } else {
      /// 由于第一次获取locale值为null,设置初始化选中的语言并且不更新widget */
      locale = _locale;
    }
  }
}