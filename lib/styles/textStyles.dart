import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Font{
  static TextStyle appBarHeading = TextStyle(
    fontFamily: GoogleFonts.robotoSlab().fontFamily,
    fontWeight: FontWeight.w900,
    letterSpacing: 0.5
  );
  static TextStyle drawerHeading = TextStyle(
    fontFamily: GoogleFonts.robotoSerif().fontFamily,
    fontWeight: FontWeight.w100,
    letterSpacing: 1.25
  );
  static TextStyle drawerOptions = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.15
  );
  static TextStyle textFont = TextStyle(
    fontFamily: GoogleFonts.raleway().fontFamily,
    fontWeight: FontWeight.w300,
    wordSpacing: 1.5
  );
  static TextStyle textHeading = TextStyle(
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    fontWeight: FontWeight.w100,
    wordSpacing: 1.25
  );
}