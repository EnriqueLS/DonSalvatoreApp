import 'package:flutter/material.dart';

Widget appBarLogo() {
  return AppBar(
    //backgroundColor: Colors.black,
    //elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/Logo.png',
          fit: BoxFit.cover,
          height: 55,
        ),
      ],
    ),
  );
}
