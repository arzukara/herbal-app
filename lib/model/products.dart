import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  List<Product> products;

  Products({
    required this.products,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  int id;
  String name;
  String? photoUrl;
  String? price;
  String? unit;
  List<Product> items;

  Product({
    required this.id,
    required this.name,
    this.photoUrl,
    this.price,
    this.unit,
    required this.items,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        photoUrl: json["photoUrl"],
        price: json["price"],
        unit: json["unit"],
        items:
            List<Product>.from(json["items"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "photoUrl": photoUrl,
        "price": price,
        "unit": unit,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}
