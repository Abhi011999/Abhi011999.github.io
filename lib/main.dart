import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'themes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      title: 'Portfolio',
      home: WebApp(),
    ),
  );
}

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: GoogleFonts.raleway(
            fontSize: 60.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: TypewriterAnimatedTextKit(
          text: [
            "Do not test bugs out, design them out",
          ],
          textStyle: GoogleFonts.raleway(
            fontSize: 80.0,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
