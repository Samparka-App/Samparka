import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samparka/persistence/userInfo.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Padding(
          padding: const EdgeInsets.only(top: 40.0,bottom: 20.0),
          child: Image.asset("images/uvce.png"),
        ),
        SizedBox(height:MediaQuery.of(context).size.height/20),
        Text(
          "Samparka 2.O",
          style: TextStyle(
            fontFamily: GoogleFonts.notoSans().fontFamily
          ),
          textScaleFactor: 2,
        ),
        SizedBox(height: MediaQuery.of(context).size.height/20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBtn(context,Icons.skip_next_outlined, "Alumini"),
            const SizedBox(width: 50,),
            _buildBtn(context,Icons.abc_rounded, "Student")
          ],
        )
      ]
    );
  }

  Widget _buildBtn(BuildContext context,IconData ico, String str){
    return Container(
      color: Colors.black38,
      height: MediaQuery.of(context).size.height/12,
      width: MediaQuery.of(context).size.width/3,
      child: ElevatedButton(
        style: const ButtonStyle(),
          onPressed: (){
          setStatus(1);
          Navigator.pushNamed(context, "/home");
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(ico),
              Text(str)
            ],
          )
      ),
    );
  }
}

