import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int id;
  String? title;
  double? priceold;
  double? price;
  String? description;
  String? image;
  Rating? rating;

  Product({
    required this.id,
    this.title,
    this.priceold,
    this.price,
    this.description,
    this.image,
    this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        priceold: json["priceold"] != null ? double.parse(json["priceold"]) : 0,
        price: json["price"],
        description: json["description"],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "priceold": priceold,
        "price": price,
        "description": description,
        "image": image,
        "rating": rating?.toJson(),
      };
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  double rate;
  int count;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };
}
