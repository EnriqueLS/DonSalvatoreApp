import 'package:flutter/material.dart';

import 'package:flutter_don_salvatore/src/pages/home_page.dart';
import 'package:flutter_don_salvatore/src/providers/mi_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MiProvider>(
      create: (context) => MiProvider(),
      child: MaterialApp(
        theme: ThemeData(
          backgroundColor: Colors.black,
          appBarTheme: AppBarTheme(color: Colors.black),
        ),
        title: 'DonSalvatore',
        home: HomePage(),
      ),
    );
  }
}
