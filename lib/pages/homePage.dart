import 'package:flutter/material.dart';

import '../widgets/infoCards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildHeading("Clubs", context),
            _paddingBox(30),
            _wrapInfoCards(context),
            _paddingBox(60),
            _buildHeading("TimeTable", context),
            _paddingBox(30),
            _wrapInfoCards(context),
            _paddingBox(60),
            _buildHeading("Alumini", context),
            _paddingBox(30),
            _wrapInfoCards(context),
            _paddingBox(60)
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(String title, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 120.0),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)
          )
      ),
      padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
      child: Text(title, textScaleFactor: 2),
    );
  }

  Widget _wrapInfoCards(BuildContext context){
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        child: InfoCards()
    );
  }

  Widget _paddingBox(double height){
    return SizedBox(height: height);
  }

}
