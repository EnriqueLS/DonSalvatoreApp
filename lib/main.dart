import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_don_salvatore/src/providers/mi_provider.dart';
import 'package:flutter_don_salvatore/src/pages/home_page.dart';
import 'package:flutter_don_salvatore/src/pages/splashScreen_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MiProvider>(
      create: (context) => MiProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xFFd35be5),
          accentColor: Color(0xFF63d372),
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(color: Color(0xFF822807)),
        ),
        title: 'DonSalvatore',
        home: SplashScreenPage(),
      ),
    );
  }
}
