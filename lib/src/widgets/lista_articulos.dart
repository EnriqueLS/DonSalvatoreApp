import 'package:flutter/material.dart';

import 'package:flutter_don_salvatore/src/models/carta_model.dart';
import 'package:flutter_don_salvatore/src/estilos.dart';

class ListaArticulos extends StatelessWidget {
  final List<Articulo> articulos;

  const ListaArticulos(this.articulos);

  @override
  Widget build(BuildContext context) {
    // Comprobamos si al lista articulos está vacia.
    // Si está vacia quiere decir que es la carga inicial de al aplicación y mostramos todos los artículos
    if (articulos.length == 0) {
      return Text("Lista vacia");
    } else {
      return ListView.builder(
        itemCount: articulos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 75.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.5),
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: colorSecundario,
              borderRadius: BorderRadius.circular(6.0),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 2,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      this.articulos[index].nombreArticulo,
                      style: TextStyle(fontSize: 20, color: colorTextoTitulos),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: colorPrincipal,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.0, horizontal: 7.0),
                      child: Text(
                        this.articulos[index].precio + '€',
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Text(
                  this.articulos[index].ingredientes,
                  style: TextStyle(fontSize: 13, color: colorTextoTitulos),
                ),
              ],
            ),
          );
        },
      );
    }
  }
}
