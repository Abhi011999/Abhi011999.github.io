import 'package:create_atom/create_atom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:math' as math;

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);

    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -150.0,
            left: -625.0,
            child: Transform.rotate(
              angle: math.pi / 4.0,
              child: Atom(
                size: 1250.0,
                orbitsWidthFactor: 3.0,
                nucleusRadiusFactor: 1.5,
                animDuration1: Duration(seconds: 2),
                animDuration2: Duration(seconds: 6),
                animDuration3: Duration(seconds: 10),
                electronsColor: Colors.black54,
                orbitsColor: Colors.black38,
                nucleusColor: Colors.black54,
              ),
            ),
          ),
          Center(
            child: TypewriterAnimatedTextKit(
              text: ["Hi, There !", "This Website is Under Construction..."],
              textStyle: GoogleFonts.raleway(fontSize: 80.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
              speed: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              isRepeatingAnimation: true,
            ),
          ),
        ],
      ),
    );
  }
}
