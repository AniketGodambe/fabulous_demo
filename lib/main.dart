import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: getThemeData(),
        appBarTheme: AppBarTheme(
          color: Colors.amber[400],
          centerTitle: false,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: GoogleFonts.getFont(
              'Outfit',
            ).fontFamily,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }

  TextTheme getThemeData() {
    return TextTheme(
      headline1: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
      headline2: TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
      headline3: TextStyle(
        fontSize: 14.0,
        fontStyle: FontStyle.normal,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
      headline4: TextStyle(
        fontSize: 10.0,
        fontStyle: FontStyle.italic,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        fontFamily: GoogleFonts.outfit().fontFamily,
      ),
    );
  }
}
