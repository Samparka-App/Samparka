import 'package:flutter/material.dart';
import 'package:samparka/main.dart';

import '../widgets/appbar.dart';

class HomePage extends StatelessWidget{
  IconData ico = themeGlobalKey.currentState!.ico;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(ico),
      drawer: Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("ALskla"), Text("AJKhdkasjl")],
      ),
    );
  }
}