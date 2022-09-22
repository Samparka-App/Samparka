import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:samparka/main.dart';
import 'package:samparka/provider/themeProvider.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String heading;

  MyAppBar(this.heading, {Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(heading),
      actions: [
        IconButton(
            onPressed: () {context.read<ThemeChanging>().changeTheme();},
            icon: Icon(context.watch<ThemeChanging>().theme[1]))
      ],
    );
  }
}
