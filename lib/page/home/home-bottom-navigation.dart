import 'package:flutter/material.dart';
import 'package:ft_project/i10n/localization_intl.dart';
import 'package:ft_project/store/app-module.dart';
import 'package:provider/provider.dart';
import 'home.dart' show Home;
import 'category.dart' show Category;
import 'shopping-cart.dart' show ShoppingCart;
import 'Information.dart' show Information;

class HomeBottomNavigation extends StatelessWidget {
  final List<Widget> _bottomBarAndBodyWidget = [
    Home(),
    Category(),
    ShoppingCart(),
    Information(),
  ];

  @override
  Widget build(BuildContext context) {
    AppModule appModule = Provider.of<AppModule>(context);
    Color color = Theme.of(context).primaryColorDark;
    return Scaffold(
      appBar: AppBar(
        title: Text(I10n.of(context).sayHello('Anles')),
      ),
      body: _bottomBarAndBodyWidget[appModule.homeBtmBarCurrIndex],
      drawer:  Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(I10n.of(context).home)),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text(I10n.of(context).category)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text(I10n.of(context).shoppingCart)),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(I10n.of(context).information))
        ],
        currentIndex: appModule.homeBtmBarCurrIndex,
        fixedColor: color,
        onTap: appModule.homeBtmBarCurrIndexChange,
      ),
    );
  }
}
