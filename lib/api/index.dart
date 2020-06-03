import 'package:ft_project/api/models/accont.dart';

class Apis extends AccountApi{
  factory Apis() =>_getInstance();
  static Apis get instance => _getInstance();
  static Apis _instance;
  Apis._internal() {
    // 初始化
  }
  static Apis _getInstance() {
    if (_instance == null) {
      _instance = Apis._internal();
    }
    return _instance;
  }
}
