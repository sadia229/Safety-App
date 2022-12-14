import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class KTextStyle {
  static TextStyle headline1 = TextStyle(
    fontSize: 31,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle headline2 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle headline3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle1 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle7 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle dialog = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle description = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle2 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle button = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );
  // TODO :: Check the naming for styles,
  // you don't usually have so many different subtitle styles
  // 10 is the smallest fontSize for app,
  // so you can call it caption
  // 14 with w400 is usuallu bodyText
  static TextStyle subtitle3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );
  static TextStyle subtitle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle6 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle5 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle sticker = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );

  static TextStyle subtitle8 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.ubuntu().fontFamily,
  );
}
