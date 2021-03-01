import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TypewriterAnimatedTextKit(
        text: [
          "Hi, There !",
          "This Website is Under Construction..."
        ],
        textStyle: GoogleFonts.raleway(fontSize: 80.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.start,
        speed: Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        isRepeatingAnimation: true,
      ),
    );
  }
}
