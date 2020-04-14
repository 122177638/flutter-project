import 'package:flutter/material.dart';
import 'package:ft_project/i10n/localization_intl.dart';
import 'package:ft_project/store/locale-module.dart';
import 'package:provider/provider.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColorDark;
    LocaleModule localeModule = Provider.of<LocaleModule>(context);
    var allSupportedLocalesList = localeModule.allSupportedLocalesList;
    return Scaffold(
      appBar: AppBar(
        title: Text(I10n().language),
      ),
      body: ListView.separated(
        itemCount: allSupportedLocalesList.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            indent: 15,
          );
        },
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: ListTile(
              title: Text(allSupportedLocalesList[index]['name']),
              trailing: localeModule.locale == allSupportedLocalesList[index]['localeString'] ? Icon(Icons.done, color:color) : null,
              onTap: () {
                localeModule.localeChange(allSupportedLocalesList[index]['localeString']);
              },
            ),
          );
        }
      ),
    );
  }
}