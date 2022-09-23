import 'package:flutter/material.dart';
import 'package:samparka/layout.dart';
import 'package:samparka/pages/homePage.dart';
import 'package:samparka/pages/introPage.dart';
import 'package:provider/provider.dart';
import 'package:samparka/provider/themeProvider.dart';
import 'package:samparka/user_info/user.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ThemeChanging())
      ],
      child: MyApp()
  )
  );
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
      theme: context.watch<ThemeChanging>().theme[0],
        initialRoute:(Status().stat=="none")?"/intro":"/home",
        routes: {
          "/home": (context) => LayoutPage(HomePage(), "Home"),
          "/intro":(context)=>LayoutPage(const IntroPage(), "Intro"),
        },
    );
  }
}
