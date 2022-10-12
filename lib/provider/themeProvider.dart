import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/persistence/userInfo.dart';

class ThemeChanging with ChangeNotifier {
  final List<dynamic> _light = [ThemeData.light(), CupertinoIcons.sun_max];
  final List<dynamic> _dark = [ThemeData.dark(), CupertinoIcons.moon];

  late List<dynamic> _curTheme = _dark;

  void changeTheme() {
    if (_curTheme == _light) {
      _curTheme = _dark;
      setThemeStatus(0);
    } else {
      _curTheme = _light;
      setThemeStatus(1);
    }
    notifyListeners();
  }

  List get theme => _curTheme;
}
