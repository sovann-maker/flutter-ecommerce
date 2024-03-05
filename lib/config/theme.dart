import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline2: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline3: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline4: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
    headline5: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    bodyText1: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    ),
    bodyText2: GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
    ),
  );
}
