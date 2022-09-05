import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/main.dart';

import '../styles/textStyles.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{

  late IconData ico;

  MyAppBar(this.ico, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
          "Samparka",
        style: Font.heading,
        textScaleFactor: 1.175,
      ),
      actions: [
        IconButton(onPressed: () {
          themeGlobalKey.currentState?.changeTheme();
        }
            , icon: Icon(ico))
      ],
    );
  }
}