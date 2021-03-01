import 'package:flutter/material.dart';
import 'package:abhi011999_personal_website/pages/root.dart';
import 'themes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      title: 'Portfolio',
      home: RootPage(),
    ),
  );
}
