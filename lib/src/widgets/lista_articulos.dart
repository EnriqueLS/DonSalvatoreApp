import 'package:flutter/material.dart';

import 'package:flutter_don_salvatore/src/models/carta_model.dart';

class ListaArticulos extends StatelessWidget {
  final List<Articulo> articulos;

  const ListaArticulos(this.articulos);

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: articulos.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(
          this.articulos[index].nombreArticulo,
          style: TextStyle(fontSize: 15),
        );
      },
    );
  }
}
