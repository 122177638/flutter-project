import 'package:flutter/material.dart';
class AppModule with ChangeNotifier{
  /// Home底部选中导航下标  */
  int homeBtmBarCurrIndex = 0;
  
  void homeBtmBarCurrIndexChange(currentIndex){
    homeBtmBarCurrIndex = currentIndex;
    notifyListeners();
  }

}