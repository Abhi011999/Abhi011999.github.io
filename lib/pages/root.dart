import 'package:abhi011999_personal_website/widgets/frosted_app_bar.dart';
import 'package:abhi011999_personal_website/pages/about.dart';
import 'package:abhi011999_personal_website/pages/contact.dart';
import 'package:abhi011999_personal_website/pages/landing.dart';
import 'package:abhi011999_personal_website/pages/projects.dart';
import 'package:abhi011999_personal_website/utils/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with AfterLayoutMixin<RootPage> {
  bool _appBarHeaderText = false;
  int _appBarSelectedButtonIndex = 1;
  List<Widget> _pages = [
    LandingPage(),
    ProjectsPage(),
    AboutPage(),
    ContactPage(),
  ];
  late Widget _currentPage;
  bool _reversePage = false;

  TextStyle appBarButtonsTextStyle = GoogleFonts.raleway(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );

  @override
  void initState() {
    super.initState();
    _currentPage = _pages[0];
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() => _appBarHeaderText = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: FrostedAppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.5),
        blurStrengthX: 20.0,
        blurStrengthY: 20.0,
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
                    _reversePage = _appBarSelectedButtonIndex > 1 ? true : false;
                    _appBarSelectedButtonIndex = 1;
                    _currentPage = _pages[0];
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
                      duration: Duration(milliseconds: 500),
                      child: ClipOval(
                        child: Container(
                          color: Colors.black,
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
                    _reversePage = _appBarSelectedButtonIndex > 2 ? true : false;
                    _appBarSelectedButtonIndex = 2;
                    _currentPage = _pages[1];
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
                      duration:  Duration(milliseconds: 500),
                      child: ClipOval(
                        child: Container(
                          color: Colors.black,
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
                    _reversePage = _appBarSelectedButtonIndex > 3 ? true : false;
                    _appBarSelectedButtonIndex = 3;
                    _currentPage = _pages[2];
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
                      duration:  Duration(milliseconds: 500),
                      child: ClipOval(
                        child: Container(
                          color: Colors.black,
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
                    _reversePage = _appBarSelectedButtonIndex > 4 ? true : false;
                    _appBarSelectedButtonIndex = 4;
                    _currentPage = _pages[3];
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
                      duration:  Duration(milliseconds: 500),
                      child: ClipOval(
                        child: Container(
                          color: Colors.black,
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
      body: PageTransitionSwitcher(
        duration: Duration(milliseconds: 500),
        reverse: _reversePage,
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) =>
            SharedAxisTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        ),
        child: _currentPage,
      ),
    );
  }
}
