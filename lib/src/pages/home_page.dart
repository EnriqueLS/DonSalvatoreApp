import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//
import 'package:flutter_don_salvatore/src/widgets/appbar_logo.dart';
import 'package:flutter_don_salvatore/src/models/carta_model.dart';
import 'package:flutter_don_salvatore/src/services/carta_service.dart';
import 'package:flutter_don_salvatore/src/widgets/lista_articulos.dart';
import 'package:flutter_don_salvatore/src/providers/mi_provider.dart';


CartaModel miCarta = new CartaModel();
String categoriaSeleccionada = "";
List<Articulo> articulos = [];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MiProvider miProvider = Provider.of<MiProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: appBarLogo(),
      body: Column(
        children: <Widget>[
          ListaCategorias(miProvider),
          // Contenedor que ocupa la pantalla entera menos 150 que es lo que le deja a ListaCategorias para darle su alto
          Container(
            height: MediaQuery.of(context).size.height - 190,
            child: ListaArticulos(articulos),
          ),
        ],
      ),
    );
  }

  
  
}

class ListaCategorias extends StatefulWidget {
  final MiProvider miProvider;

  ListaCategorias(this.miProvider);

  @override
  _ListaCategoriasState createState() => _ListaCategoriasState();
}

class _ListaCategoriasState extends State<ListaCategorias> {
  @override
  void initState() {
    CartaService().loadCarta().then((result) {
      setState(() {
        miCarta = result;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Si aun no se ha cargado al carta.json local mostramos el CircularProgressIndicator
    if (miCarta.categorias == null) {
      return CircularProgressIndicator();
    } else {
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: miCarta.categorias.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                widget.miProvider.categoriaSeleccionada =
                    miCarta.categorias[index].nombreCategoria;
                    
                articulos = miCarta.categorias[index].articulos;

                print(miCarta.categorias[index].nombreCategoria);
                // setState(() {
                //   categoriaSeleccionada =
                //       miCarta.categorias[index].nombreCategoria;
                //   articulos = miCarta.categorias[index].articulos;
                // });
              },
              child: Container(
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
                decoration: BoxDecoration(
                  color: (widget.miProvider.categoriaSeleccionada ==
                          miCarta.categorias[index].nombreCategoria)
                      ? Colors.blueGrey
                      : Colors.blueGrey[100],
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("""assets/${miCarta.categorias[index].icono}""",
                        height: 55.0),
                    //TODO: FALTA CARGAR COLOR DE CONTAINER
                    SizedBox(height: 5.0),
                    Text(
                      miCarta.categorias[index].nombreCategoria,
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }
  }
}


