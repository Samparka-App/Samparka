import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/main.dart';

import '../styles/textStyles.dart';

class MyDrawer extends StatelessWidget {
  ThemeData theme = themeGlobalKey.currentState!.theme;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              child: DrawerHeader(
                padding: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    color: theme==ThemeData.dark()?Colors.black:ThemeData.light().primaryColor
                  ),
                  child: Column(
                    children: [
                      Icon(
                          CupertinoIcons.book_solid,
                        size: MediaQuery.of(context).size.height / 13,
                        color: Colors.white,
                      ),
                      Text(
                        "Samparka",
                        style: Font.drawerHeading,
                        textScaleFactor: 2,
                        textAlign: TextAlign.center,
                      ),

                    ],
                  )))
        ],
      ),
    );
  }
}
