import 'package:flutter/material.dart';

import '../../../../bloc_main.dart';
import '../../../../domain/models/theme_model.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    required this.isDarkThemeEnabled,
    Key? key,
  }) : super(key: key);

  final bool isDarkThemeEnabled;

  @override
  Widget build(BuildContext context) => Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Dark Themes'),
            trailing: Switch(
              value: isDarkThemeEnabled,
              onChanged: (bool value) {
                themeStream.changeTheme(ThemeModel(isDarkThemeEnabled: value));
              },
            ),
          )
        ],
      ),
    );
}
