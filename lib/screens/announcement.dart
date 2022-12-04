import 'package:flutter/material.dart';

class Annoucements extends StatefulWidget{
  @override
  State<Annoucements> createState() => _AnnoucementsState();
}

class _AnnoucementsState extends State<Annoucements> {
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
                        child: Image.asset("images/uvce.png")
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Text("Event Heading",textScaleFactor: 2,),
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 10,left: 10),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
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
      ],
    );
  }
}