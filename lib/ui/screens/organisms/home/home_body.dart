import 'package:flutter/material.dart';

import '../../../../bloc_main.dart';
import '../../../../domain/models/theme_model.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    required this.isDarkThemeEnabled,
    Key? key,
  }) : super(key: key);

  final bool isDarkThemeEnabled;

  @override
  Widget build(BuildContext context) => Center(
      child: Column(
        children: <Widget>[
          const Text('Hello World'),
          ElevatedButton(
            onPressed: () {
              themeStream.changeTheme(
                ThemeModel(isDarkThemeEnabled: !isDarkThemeEnabled),
              );
            },
            child: const Text('Change theme'),
          )
        ],
      ),
    );
}
