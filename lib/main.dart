import 'package:flutter/material.dart';

import 'package:flutter_don_salvatore/src/pages/home_page.dart';
import 'package:flutter_don_salvatore/src/providers/my_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: MaterialApp(
        title: 'DonSalvatore',
        home: HomePage(),
      ),
    );
  }
}
