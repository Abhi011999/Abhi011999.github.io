import 'package:abhi011999_personal_website/pages/landing.dart';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with AfterLayoutMixin<RootPage> {
  bool _appBarHeaderText = false;
  int _appBarSelectedButtonIndex = 1;

  TextStyle appBarButtonsTextStyle = GoogleFonts.raleway(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() => _appBarHeaderText = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        elevation: 10.0,
        title: AnimatedOpacity(
          curve: Curves.easeOut,
          duration: Duration(milliseconds: 1500),
          opacity: _appBarHeaderText ? 1.0 : 0.0,
          child: AnimatedContainer(
            height: _appBarHeaderText ? 60.0 : 0.0,
            curve: Curves.easeOut,
            duration: Duration(seconds: 1),
            child: Text(
              "Home",
              style: GoogleFonts.raleway(fontSize: 60.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        actions: [
          ButtonBar(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _appBarSelectedButtonIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Home",
                      style: appBarButtonsTextStyle,
                    ),
                    SizedBox(height: 7.5),
                    AnimatedOpacity(
                      opacity: _appBarSelectedButtonIndex == 1 ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: ClipOval(
                        child: Container(
                          color: Colors.blue,
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7.5),
              TextButton(
                onPressed: () {
                  setState(() {
                    _appBarSelectedButtonIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Projects",
                      style: appBarButtonsTextStyle,
                    ),
                    SizedBox(height: 7.5),
                    AnimatedOpacity(
                      opacity: _appBarSelectedButtonIndex == 2 ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: ClipOval(
                        child: Container(
                          color: Colors.blue,
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7.5),
              TextButton(
                onPressed: () {
                  setState(() {
                    _appBarSelectedButtonIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "About",
                      style: appBarButtonsTextStyle,
                    ),
                    SizedBox(height: 7.5),
                    AnimatedOpacity(
                      opacity: _appBarSelectedButtonIndex == 3 ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: ClipOval(
                        child: Container(
                          color: Colors.blue,
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7.5),
              TextButton(
                onPressed: () {
                  setState(() {
                    _appBarSelectedButtonIndex = 4;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Contact",
                      style: appBarButtonsTextStyle,
                    ),
                    SizedBox(height: 7.5),
                    AnimatedOpacity(
                      opacity: _appBarSelectedButtonIndex == 4 ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: ClipOval(
                        child: Container(
                          color: Colors.blue,
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.0),
            ],
          )
        ],
      ),
      body: LandingPage(),
    );
  }
}
