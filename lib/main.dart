import 'package:flutter/material.dart';
import 'package:samparka/layout.dart';
import 'package:samparka/pages/homePage.dart';
import 'package:samparka/pages/introPage.dart';

void main() {
  runApp(const MyApp());
}

final themeGlobalKey = GlobalKey<_MyAppState>();

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
        initialRoute: "/intro",
        routes: {
          "/home": (context) => LayoutPage(HomePage(), "Home"),
          "/intro":(context)=>LayoutPage(const IntroPage(), "Intro"),
        },
    );
  }
}
