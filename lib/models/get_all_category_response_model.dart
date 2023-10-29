// To parse this JSON data, do
//
//     final getAllCategoryResponseModel = getAllCategoryResponseModelFromJson(jsonString);

import 'dart:convert';

List<String> getAllCategoryResponseModelFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String getAllCategoryResponseModelToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));
