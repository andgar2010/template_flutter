import 'dart:async';

import '../models/theme_model.dart';

class ThemeStream {
  final StreamController<ThemeModel> _themeStreamController = StreamController<ThemeModel>();
  Function(ThemeModel) get changeTheme => _themeStreamController.sink.add;
  Stream<ThemeModel> get getStream => _themeStreamController.stream;
  // Stream<ThemeModel> get darkThemeEnabled => _themeStreamController.stream;

  void dispose() {
    _themeStreamController.close();
  }

  // double _radius = 1;
  // bool _isActive = true;
  // Duration _currentTime;
  // Duration _fullTime;

  // Stream<Count> stream() async* {
  //   print("EN el stream");

  //   yield* Stream.periodic(Duration(seconds: 1), (int s) {
  //     if (_isActive) {
  //       print("$_currentTime $_radius");

  //       _currentTime -= Duration(seconds: 1);
  //       _radius = _currentTime.inSeconds / _fullTime.inSeconds;

  //       if (_currentTime.inSeconds <= 0) {
  //         _isActive = false;
  //       }
  //     }

  //     return Count(isDarkThemeEnabled: false);
  //   });
  // }

  // bool getActive() => _isActive;

  // void start() {
  //   _isActive = true;
  // }

  // void stop() {
  //   _isActive = false;
  // }

  // void setTime(int senconds) {
  //   _currentTime = Duration(seconds: senconds);
  //   _fullTime = Duration(seconds: senconds);
  // }

  // void reset() {
  //   _currentTime = Duration(seconds: _fullTime.inSeconds);
  // }
}
