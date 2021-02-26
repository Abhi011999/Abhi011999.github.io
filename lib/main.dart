import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Website',
      home: WebApp(),
    ),
  );
}

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.75),
        title: Text("Website", style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: TypewriterAnimatedTextKit(
          text: [
            "Do not test bugs out, design them out",
          ],
          textStyle: TextStyle(fontSize: 80.0),
          textAlign: TextAlign.start,
          speed: Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
