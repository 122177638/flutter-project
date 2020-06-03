import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'messages_all.dart'; //1
class I10nApp {
   String get title {
    return Intl.message(
      'Flutter 应用',
      name: 'title',
      desc: '这是app的标题',
    );
  }

  String sayHello(name){
    return Intl.message(
      '你好 $name',
      args: [name],
      desc: '这是一个传值测试案例',
      name: 'sayHello',
      examples: const {'name': 'Anles'}
    );
  }

  String get home{
    return Intl.message(
      '首页',
      name: 'home',
      desc: '导航首页'
    );
  }
  String get category{
    return Intl.message(
      '分类',
      name: 'category',
      desc: '导航分类'
    );
  }
  String get shoppingCart{
    return Intl.message(
      '购物车',
      name: 'shoppingCart',
      desc: '导航购物车'
    );
  }
  String get information{
    return Intl.message(
      '我的',
      name: 'information',
      desc: '导航我的'
    );
  }
  String get setting{
    return Intl.message(
      '设置',
      name: 'setting',
      desc: '设置页面标题'
    );
  }
  String get language{
    return Intl.message(
      '语言',
      name: 'language',
      desc: '语言页面标题'
    );
  }
  String get theme{
    return Intl.message(
      '皮肤',
      name: 'theme',
      desc: '皮肤页面标题'
    );
  }
}
class I10n extends I10nApp{
  static Future<I10n> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    //2
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new I10n();
    });
  }

  static I10n of(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }
}

//Locale代理类
class I10nDelegate extends LocalizationsDelegate<I10n> {
  const I10nDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<I10n> load(Locale locale) {
    //3
    return  I10n.load(locale);
  }

  // 当Localizations Widget重新build时，是否调用load重新加载Locale资源.
  @override
  bool shouldReload(I10nDelegate old) => false;
}