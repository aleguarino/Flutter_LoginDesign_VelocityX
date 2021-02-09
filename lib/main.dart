import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_design/screens/login.dart';
import 'package:login_design/screens/onboard.dart';
import 'package:login_design/utils/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Palette.yellow,
        accentColor: Palette.green,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      home: LoginScreen(),
    );
  }
}
