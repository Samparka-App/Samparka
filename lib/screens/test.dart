import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:samparka/jsonFiles/newsInfo.dart';
import 'package:samparka/widgets/appBar.dart';
import 'package:samparka/widgets/drawer.dart';

import '../jsonFiles/userModel.dart';

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
                return createCol(news,news.total);
              }
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

ListView createCol(News list,int? total){
  dynamic post = list.posts;
  return ListView.builder(
    itemCount: 150,
    itemBuilder: (BuildContext ctx,int index)=>createRow(post[index]),
  );
}

// List<Widget> getRows(int total, dynamic post){
//   int i;
//   List<Widget> rows = [];
//   for(i=0;i<total;i++){
//     rows.add(createRow(post[i]));
//   }
//   return rows;
// }

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