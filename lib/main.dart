import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_don_salvatore/src/providers/mi_provider.dart';
import 'package:flutter_don_salvatore/src/pages/menu_page.dart';
import 'package:flutter_don_salvatore/src/pages/splashScreen_page.dart';
import 'package:flutter_don_salvatore/src/estilos.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MiProvider>(
      create: (context) => MiProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: estiloAppThemeData,
        title: 'Don Salvatore',
        home: SplashScreenPage(),
      ),
    );
  }

}
