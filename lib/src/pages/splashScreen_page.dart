import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_don_salvatore/src/pages/menu_page.dart';


class SplashScreenPage extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  //String _versionName = 'V1.0';
  final splashDelay = 3;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => MenuPage()));
  }

  @override
  Widget build(BuildContext context) {
      final screenSize = MediaQuery.of(context).size;

    return Center(
      child: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: Color(0xFF78372f),
        child: Image.asset(
          'assets/Logo.png',
          height: screenSize.height * 0.8,  //height: 300
          width: screenSize.height * 0.8// width: 300,
        ),
      ),
    );
  }
}
