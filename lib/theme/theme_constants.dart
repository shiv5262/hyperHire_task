import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.grey.shade200,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 16,
    ),
    bodySmall: GoogleFonts.notoSansKr(
      color: Colors.black,
      fontSize: 12,
    ),
    bodyMedium: GoogleFonts.notoSansKr(
      color: Colors.black,
      fontSize: 14,
    ),
  ),
);
