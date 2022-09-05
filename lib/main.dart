import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/pages/home.dart';

void main() {
  runApp(MyApp(
    key: themeGlobalKey,
  ));
}

final themeGlobalKey = GlobalKey<_MyAppState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData theme = ThemeData.dark();
  IconData ico = CupertinoIcons.moon_circle_fill;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: HomePage(),
    );
  }

  void changeTheme() {
    setState(() {
      if (themeGlobalKey.currentState!.theme == ThemeData.dark()) {
        themeGlobalKey.currentState!.theme = ThemeData.light();
        ico = CupertinoIcons.sun_max_fill;
      } else {
        themeGlobalKey.currentState!.theme = ThemeData.dark();
        ico = CupertinoIcons.moon_circle_fill;
      }
    });
  }
}