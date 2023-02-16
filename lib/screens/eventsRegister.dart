import 'package:flutter/material.dart';

class EventsRegister extends StatefulWidget {
  @override
  State<EventsRegister> createState() => _EventsRegisterState();
}

class _EventsRegisterState extends State<EventsRegister> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Image.asset("images/uvce.png")),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Text(
                        "Event Heading",
                        textScaleFactor: 2,
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 10, left: 10),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "asssssssseawasdawdawdasdawdasdawdasdasdasdawdadwasdadwaw"
                    "dawdawdadwwaddasdweaeawdsadadawdawdacsaddeawdawdasdw"
                    "dadawdasawdasddddddddddddddddddasdawsdasdsadsaddadawdasd",
                    textScaleFactor: 1.2,
                  ),
                )
              ],
            ),
          ),
        ),
        Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.purple,
                child: TextButton(
                  style: ButtonStyle(
                      // splashFactory: NoSplash.splashFactory,
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {},
                  child: const Text("Register"),
                ),
              ),
            ),
            SizedBox(
              width: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: TextButton(
                  style: ButtonStyle(
                      // splashFactory: NoSplash.splashFactory,
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () {},
                  child: const Text("Venue"),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
