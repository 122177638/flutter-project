import 'package:flutter/material.dart';

void collectLog(String line){
  //收集日志
  print(line);
}
void reportErrorAndLog(FlutterErrorDetails details){
  //上报错误和日志逻辑
  print(details);

}

makeDetails(Object obj, StackTrace stack){
  // 构建错误信息
  print(obj);
  print(stack);
}