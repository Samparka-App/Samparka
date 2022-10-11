import 'package:flutter/material.dart';
import 'package:samparka/widgets/appBar.dart';
import 'package:samparka/widgets/drawer.dart';

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar("Test Page"),
      drawer: MyDrawer(),
      body: Center(
        child: FutureBuilder(
          future: getData(),
          builder: (ctx,snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              if(snapshot.hasError){
                return Text("Error ${snapshot.error}",textScaleFactor: 2);
              }else if(snapshot.hasData){
                return Text(snapshot.data as String,textScaleFactor: 1.75);
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "I am data";
    // throw Exception("Custom Error");
  });
}