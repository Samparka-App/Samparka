import 'package:flutter/material.dart';
import 'package:samparka/utils/navigation.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const DrawerHeader(child: Text("humanoid")),
              _drawerOptions(context,"Home",Icons.co2_outlined,'/home'),
              _drawerOptions(context,"Sampada",Icons.safety_check,'/sampada'),
              _drawerOptions(context,"Test",Icons.access_alarm,'/test'),
            ],
        ),
    );
  }

  Widget _drawerOptions(context,String option, IconData ico,String str){
    return  ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
          Navigate(str, context);
          },
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
              Icon(ico,size: 45,)
            ],
          ),
        ),
      );
  }
}