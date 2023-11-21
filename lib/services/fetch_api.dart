import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/controllers/category_list.dart';
import 'package:readiverse_app/models/category_model.dart';

class App {
  static const String baseUrl = 'https://www.googleapis.com/';
  static const String apiKey  = 'AIzaSyCzwfoEa1_Ah72IbFAq0Wq2S9IkC57a8D0';
}

class Api {

  static const _allBook = '${App.baseUrl}books/v1/volumes?q=disney&key=${App.apiKey}';
  Future<List<Book>> getAllBook() async {
    final response = await http.get 
    (Uri.parse(_allBook));
    if (response.statusCode == 200) {

      final decodeData = json.decode(response.body)['items'] as List;
      return decodeData.map((json) => Book.fromJson(json)).toList();

    } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  }
  
  
  Future<List<Book>> getCategoryData(String categoryName,  String categoryImage) async {
    final _categoryBooks = '${App.baseUrl}books/v1/volumes?q=$categoryName&key=${App.apiKey}';
    
    try {
      final response = await http.get(Uri.parse(_categoryBooks));
      final decodeData = json.decode(response.body)['items'] as List;
      return decodeData.map((json) => Book.fromJson(json)).toList();
    } catch (e) {
      print('Error fetching books for $categoryName category: $e');
      return []; 
    }
  }

  Future<List<Book>> getDetailBooks(booksId) async {
  final _detailBooks = '${App.baseUrl}books/v1/volumes?$booksId&key=${App.apiKey}';

    final response = await http.get 
    (Uri.parse(_detailBooks));
    if (response.statusCode == 200) {

      final List<dynamic> data = json.decode(response.body)['items'];
      List<Book> books = data.map((item) => Book.fromJson(item)).toList();

      return books;

    } else {
        throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  }


}
