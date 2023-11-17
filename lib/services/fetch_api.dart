import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/models/category_list.dart';
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
  
  
  static const _category = '${App.baseUrl}scv/books/v3/lists/names.json?api-key=${App.apiKey}';
  Future<void> getAllCategories() async {
    try {
      final response = await http.get(Uri.parse(_category));
      var jsonResponse = await jsonDecode(response.body);

      List categoriesJsonList = jsonResponse['results'];
      List<BookCategory> categories = [];
      categoriesJsonList.forEach((category) 
      { 
        categories.add(BookCategory());
      }
      );
    } catch (e) {
      print('Error: $e');
    }

  }
}
