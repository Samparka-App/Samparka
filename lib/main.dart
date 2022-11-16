import 'package:flutter/material.dart';
import 'package:samparka/layout.dart';
import 'package:samparka/pages/circularProgress.dart';
import 'package:samparka/pages/test.dart';
import 'package:samparka/pages/eventsRegister.dart';
import 'package:samparka/pages/homePage.dart';
import 'package:samparka/pages/introPage.dart';
import 'package:provider/provider.dart';
import 'package:samparka/pages/sampadaPage.dart';
import 'package:samparka/provider/themeProvider.dart';

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
  late int status, theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeChanging>().theme[0],
      // theme as bool?context.watch<ThemeChanging>().theme[1]:context.watch<ThemeChanging>().theme[0],
        // initialRoute:(Status().stat=="none")?"/intro":"/home",
      initialRoute: "/loader",
    // status as bool?"/home":"/intro",
      routes: {
          "/home": (context) => LayoutPage(HomePage(), "Home"),
          "/intro":(context)=>LayoutPage(const IntroPage(), "Intro"),
          "/register":(context)=>LayoutPage(EventsRegister(),"Event"),
        "/sampada":(context)=>LayoutPage(SampadaPage(), "Sampada"),
        "/test":(context)=>TestPage(),
        "/loader":(context)=>CircularIndicator(),
        },
    );
  }
}
