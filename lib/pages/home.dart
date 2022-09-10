import 'package:flutter/material.dart';
import 'package:samparka/main.dart';
import 'package:samparka/widgets/drawer.dart';
import '../widgets/appbar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData ico = themeGlobalKey.currentState!.ico;
  int tilesLength = 3;
  List<MyCard> cardList = [MyCard(), MyCard(), MyCard()];

  void increment() {
    tilesLength++;
    cardList = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar("Home"),
      drawer: MyDrawer(),
      body: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: cardList),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
            buildCards(cardList, tilesLength);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      elevation: 10.0,
      color: Colors.blueAccent,
      child: SizedBox(
        height: 32,
        width: MediaQuery.of(context).size.width / 1.25,
        child: Text(
          "Tile Card",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

List<MyCard> buildCards(List<MyCard> cardsList, int length) {
  for (int i = 0; i < length; i++) {
    cardsList.add(MyCard());
  }
  return cardsList;
}
