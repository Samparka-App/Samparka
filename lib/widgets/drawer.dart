import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const DrawerHeader(child: Text("humanoid")),
              _drawerOptions("Clubs",Icons.co2_outlined)
            ],
        ),
    );
  }

  Widget _drawerOptions(String option, IconData ico){
    return  ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(option,textScaleFactor: 2,),
              Icon(ico,size: 60,)
            ],
          ),
        ),
      );
  }
}