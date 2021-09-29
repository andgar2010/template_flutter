import 'package:flutter/material.dart';

import 'bloc_main.dart';
import 'domain/models/theme_model.dart';
import 'ui/screens/pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<ThemeModel>(
      stream: themeStream.getStream,
      initialData: const ThemeModel(isDarkThemeEnabled: false),
      builder: (BuildContext context, AsyncSnapshot<ThemeModel> snapshot) {
        final bool isDarkThemeEnabled = snapshot.data!.isDarkThemeEnabled;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDarkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(isDarkThemeEnabled: isDarkThemeEnabled),
        );
      },
    );
}
