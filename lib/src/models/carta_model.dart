import 'dart:convert';

CartaModel cartaModelFromJson(String str) => CartaModel.fromJson(json.decode(str));

String cartaModelToJson(CartaModel data) => json.encode(data.toJson());

class CartaModel {
    CartaModel({
        this.categorias,
    });

    List<Categoria> categorias;

    factory CartaModel.fromJson(Map<String, dynamic> json) => CartaModel(
        categorias: List<Categoria>.from(json["categorias"].map((x) => Categoria.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categorias": List<dynamic>.from(categorias.map((x) => x.toJson())),
    };
}

class Categoria {
    Categoria({
        this.nombreCategoria,
        this.color,
        this.icono,
        this.articulos,
    });

    String nombreCategoria;
    String color;
    String icono;
    List<Articulo> articulos;

    factory Categoria.fromJson(Map<String, dynamic> json) => Categoria(
        nombreCategoria: json["nombreCategoria"],
        color: json["color"],
        icono: json["icono"],
        articulos: List<Articulo>.from(json["articulos"].map((x) => Articulo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "nombreCategoria": nombreCategoria,
        "color": color,
        "icono": icono,
        "articulos": List<dynamic>.from(articulos.map((x) => x.toJson())),
    };
}

class Articulo {
    Articulo({
        this.nombreArticulo,
        this.ingredientes,
        this.precio,
    });

    String nombreArticulo;
    String ingredientes;
    String precio;

    factory Articulo.fromJson(Map<String, dynamic> json) => Articulo(
        nombreArticulo: json["nombreArticulo"],
        ingredientes: json["ingredientes"],
        precio: json["precio"],
    );

    Map<String, dynamic> toJson() => {
        "nombreArticulo": nombreArticulo,
        "ingredientes": ingredientes,
        "precio": precio,
    };
}
