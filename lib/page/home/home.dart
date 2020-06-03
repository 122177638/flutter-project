import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ft_project/api/index.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Home');
    Apis().getInfo().then((value) {
      print(value.data);
    }).catchError((err) => {
      print(err.error.message)
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Text('Home'),
        )
      ],
    );
  }
}
