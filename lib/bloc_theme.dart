import 'dart:async';

class BlocTheme {
  final StreamController<bool> _themeController = StreamController<bool>();
  Function(bool) get changeTheme => _themeController.sink.add;
  Stream<bool> get darkThemeEnabled => _themeController.stream;

  void dispose() {
    _themeController.close();
  }
}
