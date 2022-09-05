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
}