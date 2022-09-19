import 'package:flutter/material.dart';
import 'package:samparka/widgets/appBar.dart';
import 'package:samparka/widgets/drawer.dart';
import 'package:samparka/widgets/floatingActionButton.dart';

class LayoutPage extends StatelessWidget{
  Widget body;
  String title;
  LayoutPage(this.body, this.title,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar(title),
      drawer: MyDrawer(),
      floatingActionButton:

      const MyFloatingButton(),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: body
    );
  }
}