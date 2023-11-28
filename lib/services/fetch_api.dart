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

  Future<Book> getDetailBook(String bookId) async {
    
    final _detailBook = '${App.baseUrl}books/v1/volumes/$bookId?key=${App.apiKey}';
    final response = await http.get(Uri.parse(_detailBook));

    if (response.statusCode == 200) {

      final dynamic data = json.decode(response.body);
      
      if (data['volumeInfo'].isNotEmpty) {
        final Book book = Book.fromJson(data['volumeInfo']);
        return book;
      } else {
        throw Exception('No data found for book with ID: $bookId');
      }

    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  }



}
