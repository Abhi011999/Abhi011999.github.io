import 'package:flutter/material.dart';
import 'package:abhi011999_personal_website/pages/root.dart';
import 'themes.dart' as themes;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      themeMode: ThemeMode.light,
      title: 'Portfolio',
      home: RootPage(),
    ),
  );
}
