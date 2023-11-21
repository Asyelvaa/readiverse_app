import 'package:get/get.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/models/category_model.dart';

class CategoryList extends GetxController{
  
  final String name;
  final String image;
  final RxList<Book> books = <Book>[].obs;

  CategoryList(
    this.name,
    this.image
  );

  Future<void> fetchBooks(Function fetchFunction) async {
    try {
      final data = await fetchFunction();
      books.assignAll(data);
    } catch (e) {
      print('Error fetching books for $name category: $e');
    }
  }

}

