import 'package:flutter/material.dart';
import 'package:ft_project/i10n/localization_intl.dart';
import 'package:ft_project/store/theme-module.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeModule themeModule = Provider.of<ThemeModule>(context);
    var themeColors = themeModule.themeColors;
    return Scaffold(
      appBar: AppBar(
        title: Text(I10n().theme),
      ),
      body: ListView.separated(
        itemCount: themeColors.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            indent: 15,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            color: themeColors[index],
            child: ListTile(
              onTap: () {
                themeModule.themeChange(themeColors[index]);
              },
            ),
          );
        }
      ),
    );
  }
}