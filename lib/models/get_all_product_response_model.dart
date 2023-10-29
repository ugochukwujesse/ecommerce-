// To parse this JSON data, do
//
//     final getAllProductResponseModel = getAllProductResponseModelFromJson(jsonString);

import 'dart:convert';

List<GetAllProductResponseModel> getAllProductResponseModelFromJson(String str) => List<GetAllProductResponseModel>.from(json.decode(str).map((x) => GetAllProductResponseModel.fromJson(x)));

String getAllProductResponseModelToJson(List<GetAllProductResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllProductResponseModel {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  GetAllProductResponseModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory GetAllProductResponseModel.fromJson(Map<String, dynamic> json) => GetAllProductResponseModel(
    id: json["id"],
    title: json["title"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating.toJson(),
  };
}

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"]?.toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
