import 'package:flutter/material.dart';

class SampadaPage extends StatefulWidget {
  @override
  State<SampadaPage> createState() => _SampadaPageState();
}

class _SampadaPageState extends State<SampadaPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SampadaRow(),
          SampadaRow()
            ],
          ),
      );
  }
}


class SampadaRow  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        SampadaCards(),
        SampadaCards(),
        SampadaCards()
      ],
    );
  }

}

class SampadaCards extends StatefulWidget{
  @override
  State<SampadaCards> createState() => _SampadaCardsState();
}

class _SampadaCardsState extends State<SampadaCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(0, 0, 0, 0.1),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 20,bottom: 20),
      child:Text("Sampada-1",),
    );
  }
}