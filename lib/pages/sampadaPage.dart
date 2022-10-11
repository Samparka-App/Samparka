import 'package:flutter/material.dart';

class SampadaPage extends StatefulWidget {
  @override
  State<SampadaPage> createState() => _SampadaPageState();
}

class _SampadaPageState extends State<SampadaPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top:20.0),
      child: Column(
        children: [
          SampadaRow(),
          SizedBox(height: 20,),
          SampadaRow(),
          SizedBox(height: 20,),
          SampadaRow(),
          SizedBox(height: 20,),
          SampadaRow(),
          SizedBox(height: 20,),
          SampadaRow(),
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
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:MaterialStateProperty.all(Colors.orange)
      ),
      onPressed: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
        child: const Text(
          "Sampada"
        ),
      ),
    );
  }
}