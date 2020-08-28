import 'package:flutter/material.dart';

const Color colorPrincipal = Color(0xFF60C9AC);
const Color colorSecundario = Color(0xFFeae6e6);

const Color colorTextoTitulos = Color(0xFF333333);
const Color colorTexto = Color(0xFF737373);


final ThemeData estiloAppThemeData = ThemeData(
  primaryColorBrightness: Brightness.dark,
  primaryColor: colorPrincipal,
  accentColor: Color(0xFF63d372),
  backgroundColor: Colors.white,
  appBarTheme: AppBarTheme(color: Color(0xFF181716)),
);

final TextStyle estiloTextoGeneral = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.black,
  fontSize: 10,
);

final TextStyle estiloTextoCategoria = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.black,
  fontSize: 10,
);

final TextStyle estiloTextoCategoriaSeleccionada = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontSize: 10,
);

const Color colorTextoPrincipal = Color(0xFFd35be5);