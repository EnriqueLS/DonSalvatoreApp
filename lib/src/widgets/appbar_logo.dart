import 'package:flutter/material.dart';

Widget appBarLogo() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/icon_pizza.png',
          fit: BoxFit.contain,
          height: 40,
        ),
      ],
    ),
  );
}
