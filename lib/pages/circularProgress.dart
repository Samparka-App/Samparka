import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:samparka/persistence/userInfo.dart';

import '../jsonFiles/newsInfo.dart';

class CircularIndicator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder(future: getStatus(),
        builder: (ctx,snapshot){
        if(snapshot.connectionState==ConnectionState.done){
          if(snapshot.data !=0){
            // Navigator.pushNamed(context,'/home');
            SchedulerBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamed(context,"/home");
            });
          }else{
            // Navigator.pushNamed(context, '/intro');
            SchedulerBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamed(context,"/intro");
            });
          }
        }
        return Center(child:CircularProgressIndicator());
      },
      ),
    );
  }

}