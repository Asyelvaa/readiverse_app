import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:readiverse_app/data/models/book_model.dart';

class App {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes?';
  static const String apiKey  = 'AIzaSyCzwfoEa1_Ah72IbFAq0Wq2S9IkC57a8D0';
}

class Api {

static const _allBook = '${App.baseUrl}q=fiction&key=${App.apiKey}';
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
}
