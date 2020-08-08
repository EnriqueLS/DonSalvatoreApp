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
          height: 75.0,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10.0),
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
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    this.articulos[index].precio + ' €',
                    style: TextStyle(fontSize: 18, color: Colors.yellow),
                  ),
                ],
              ),
              Text(
                this.articulos[index].ingredientes,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }
}
