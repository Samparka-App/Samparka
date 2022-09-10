import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samparka/styles/textStyles.dart';
import 'package:samparka/widgets/appbar.dart';
import 'package:samparka/widgets/drawer.dart';

class IntroPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar("Intro"),
      drawer: MyDrawer(),
      bottomSheet: Text(
        "This is bottom sheet",textAlign: TextAlign.center,
      ),
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.ac_unit_sharp
        ),
        onPressed: (){},
      ),
      bottomNavigationBar: BottomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15,),
          Image.asset("images/uvce.png"),
          SizedBox(height: 30,),
          Text(
            "Samparka 2.O",
            style: Font.textHeading,
            textScaleFactor: 2.5,
          ),
          SizedBox(height: 40,),
          ButtonBar(
          // mainAxisSize: MainAxisSize.,
            alignment:MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 75,
                width: 150,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Icon(CupertinoIcons.eyeglasses),
                    Text("Alumini")
                  ],
                )
                ),
              ),
              SizedBox(
                height: 75,
                width: 150,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Icon(CupertinoIcons.book),
                        Text("Students")
                      ],
                    )
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}