import 'package:flutter/material.dart';

import '../jsonFiles/newsInfo.dart';

class CircularIndicator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder(future: fetchData(),
        builder: (ctx,snapshot){
        if(snapshot.connectionState==ConnectionState.done){
          if(snapshot.hasError){
            Navigator.pushNamed(context,'/home');
          }else if(snapshot.hasData){
            Navigator.pushNamed(context, '/intro');
          }
        }
        return Center(child:CircularProgressIndicator());
      },
      ),
    );
  }

}