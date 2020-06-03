import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryState();
  }
}

class Goods {
  String category;
  List<String> goods;
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('分类'));
  }
}
