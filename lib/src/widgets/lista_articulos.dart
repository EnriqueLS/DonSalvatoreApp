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
    return Container(
      height: 70.0,
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      padding: EdgeInsets.all(5.0),
      color: Colors.grey,
      child: Text(
        this.articulos[index].nombreArticulo,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
        },
      );
  }
}
