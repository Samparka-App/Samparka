import 'package:flutter/material.dart';
import 'package:samparka/user_info/newsInfo.dart';
import 'package:samparka/widgets/appBar.dart';
import 'package:samparka/widgets/drawer.dart';

import '../user_info/userModel.dart';

class TestPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: MyAppBar("Test Page"),
      drawer: MyDrawer(),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (ctx,snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              if(snapshot.hasError){
                return Text("Error ${snapshot.error}",textScaleFactor: 2);
              }else if(snapshot.hasData){
                final news = snapshot.data as News;
                print(news.total);
                return createCol(news);
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Column createCol(News list){
  dynamic post = list.posts;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      createRow(post[0]),
    ],
  );
}

Row createRow(dynamic itm){
  List<dynamic> lst = [itm.id,itm.title,itm.userId,itm.reactions];
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      createCard(lst)
    ],
  );
}

Card createCard(List<dynamic> lst){
  return Card(
    child: SizedBox(
      width: 350,
      height: 150,
      child: ListTile(
        title: Text(lst[1]),
        leading: Text(lst[0].toString()),
        subtitle: Text(lst[2].toString()),
        trailing: Text(lst[3].toString()),
      ),
    ),
  );
}