import 'dart:convert';

import 'package:e_commerce/models/get_all_category_response_model.dart';
import 'package:e_commerce/models/get_all_electronic_category_response.dart';
import 'package:e_commerce/models/get_all_jewelery_category_response.dart';
import 'package:e_commerce/models/get_all_product_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class ProductService{
  static Future<List<GetAllProductResponseModel>> fetchProduct () async {
     final response = await http
        .get(Uri.parse('https://fakestoreapi.com/products'));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());




    if (response.statusCode == 200) {
      final   decodeData=jsonDecode(response.body);
      final x= getAllProductResponseModelFromJson(response.body);
      return x;

    }
    else {
      throw Exception('Failed to load product ');
    }
  }
  static Future<List<String>> fetchCategories () async {
    final response= await http.
    get(Uri.parse("https://fakestoreapi.com/products/categories"));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());

    if(response.statusCode==200){
      print(response.body);
      final   decodeData=jsonDecode(response.body);
      final y= getAllCategoryResponseModelFromJson(response.body);
      return y;
    }
    else{
      throw Exception("Failed to load product");
    }
  }
  static Future<List<GetAllElectronicCategoryModel>> fetchElectronic ({required String selectedCategory}) async {
    final response= await http.
    get(Uri.parse("https://fakestoreapi.com/products/category/$selectedCategory"));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());

    if(response.statusCode==200){

      print(response.body);
      final decodeData= jsonDecode(response.body);
      final e= getAllElectronicCategoryModelFromJson(response.body);
      return e;
    }
    else{
      throw Exception("Failed to load product");
    }
    
}
static Future<List<GetAllJeweleryCategoryModel>> fetchJewelery () async {
    final response= await http.
    get(Uri.parse("https://fakestoreapi.com/products/category/jewelery"));
    debugPrint(response.body);
    debugPrint(response.statusCode.toString());
    if(response.statusCode==200){
      print(response.body);
      final decodeData=jsonDecode(response.body);
      final j= getAllJeweleryCategoryModelFromJson(response.body);
      return j;
    }
    else{
      throw Exception("Failed to load product");
    }
}
}

 

