import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: TypewriterAnimatedTextKit(
          text: [
            "About me and timeline will go here..."
          ],
          textStyle: GoogleFonts.raleway(fontSize: 80.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
          isRepeatingAnimation: true,
        ),
      ),
    );
  }
}
