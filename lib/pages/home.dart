import 'package:flutter/material.dart';
import 'package:samparka/main.dart';
import 'package:samparka/widgets/drawer.dart';

import '../widgets/appbar.dart';

class HomePage extends StatelessWidget{
  IconData ico = themeGlobalKey.currentState!.ico;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(ico,"Home"),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("ALskla"), Text("AJKhdkasjl")],
      ),
    );
  }
}