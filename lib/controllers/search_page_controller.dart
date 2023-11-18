import 'package:get/get.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/models/category_list.dart';
import 'package:readiverse_app/models/category_model.dart';
import 'package:readiverse_app/services/fetch_api.dart';

class SearchPageController extends GetxController {

  RxBool isSearching = false.obs;

  final List<CategoryList> categories = [
    CategoryList('All'),
    CategoryList('Business'),
    CategoryList('History'),
    CategoryList('Romance'),
    CategoryList('Political'),
    CategoryList('Political'),
    CategoryList('Novel'),
    CategoryList('Technology'),
    CategoryList('Science'),
    CategoryList('Art'),
  ];
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    for (final category in categories) {
      // Pass the fetch function to fetchBooks
      category.fetchBooks(() => Api().getCategoryData(category.name));
    }
  }
}