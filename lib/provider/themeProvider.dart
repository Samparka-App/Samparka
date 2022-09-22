import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeChanging with ChangeNotifier{
  ThemeData _light = ThemeData.light();
  ThemeData _dark = ThemeData.dark();
  IconData _lightIco = CupertinoIcons.sun_max;
  IconData _darkIco = CupertinoIcons.moon;

  IconData get lightIco=>_lightIco;
  IconData get darkIco=>_darkIco;
  ThemeData get light => _light;
  ThemeData get dark => _dark;

}