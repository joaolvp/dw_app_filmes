import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilmesAppUiConfig {
  FilmesAppUiConfig._();

  static String get title => 'Filmes App';

  static ThemeData get theme => ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)
        ),
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(
            fontSize: 48,
            fontWeight: FontWeight.w400,
            color: const Color(0xff222222)),
        headlineMedium: GoogleFonts.roboto(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: const Color(0xff222222)),
        headlineSmall: GoogleFonts.roboto(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.15,
            color: const Color(0xff222222)),
        bodyMedium: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: const Color(0xff222222)),
        bodySmall: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.25,
            color: const Color(0xff222222)),
        labelSmall: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
            color: const Color(0xff222222)),
      ));
}
