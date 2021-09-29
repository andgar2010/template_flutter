import 'package:flutter/material.dart';

import '../../organisms/home/home_body.dart';
import '../../organisms/home/home_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.isDarkThemeEnabled,
    Key? key,
  }) : super(key: key);

  final bool isDarkThemeEnabled;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Theme'),
      ),
      body: HomeBody(isDarkThemeEnabled: isDarkThemeEnabled),
      drawer: HomeDrawer(isDarkThemeEnabled: isDarkThemeEnabled),
    );
}
