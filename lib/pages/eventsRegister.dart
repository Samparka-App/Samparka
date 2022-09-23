import 'package:flutter/material.dart';

class EventsRegister extends StatefulWidget {
  @override
  State<EventsRegister> createState() => _EventsRegisterState();
}

class _EventsRegisterState extends State<EventsRegister> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width/1.25,
                    child: Image.asset("images/uvce.png")
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width/1.25,
                  child: Text("Event Heading"),
                  alignment: Alignment.bottomLeft,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
