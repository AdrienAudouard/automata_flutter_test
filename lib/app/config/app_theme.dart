import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: const Color(0xFF020307),
    textTheme: GoogleFonts.latoTextTheme(const TextTheme(
        headline1: TextStyle(
            fontSize: 56.0, fontWeight: FontWeight.bold, color: Colors.white),
        headline2: TextStyle(fontSize: 24.0, color: Colors.white),
        headline3: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
        bodyText2: TextStyle(color: Colors.white),
        bodyText1: TextStyle(color: Colors.white))));
