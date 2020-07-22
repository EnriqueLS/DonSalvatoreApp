import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  String _categoriaSeleccionada = '';

  get categoriaSeleccionada {
    return _categoriaSeleccionada;
  }

  set categoriaSeleccionada(String categoriaSeleccionada) {
    this._categoriaSeleccionada = categoriaSeleccionada;

    notifyListeners();
  }
}
