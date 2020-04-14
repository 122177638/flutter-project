import 'package:flutter/material.dart';
import 'package:ft_project/i10n/localization_intl.dart';

class Information extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () => Navigator.pushNamed(context, '/setting'), child: Text(I10n.of(context).setting));
  }
}