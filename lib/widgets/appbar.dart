import 'package:flutter/material.dart';
import 'package:samparka/main.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  String heading;

  MyAppBar(this.heading, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context){
    return AppBar(
      title: Text(heading),
      actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.ac_unit))
      ],
    );
  }
}