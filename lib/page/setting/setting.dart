import 'package:flutter/material.dart';
import 'package:ft_project/i10n/localization_intl.dart';
class Setting extends StatelessWidget {
  List<Map> get settings{
    return [
      {
        'title': I10n().language,
        'navigation': '/setting/language'
      },
      {
        'title': I10n().theme,
        'navigation': '/setting/theme'
      },
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I10n.of(context).setting),
      ),
      body: ListView.separated(
        itemCount: settings.length,
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
              title: Text(settings[index]['title']),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.pushNamed(context, settings[index]['navigation']);
              },
            )
          );
        }
      )
    );
  }
}
