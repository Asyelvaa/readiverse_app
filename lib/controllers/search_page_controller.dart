import 'package:get/get.dart';
import 'package:readiverse_app/global/constant/images.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/controllers/category_list.dart';
import 'package:readiverse_app/models/category_model.dart';
import 'package:readiverse_app/services/fetch_api.dart';

class SearchPageController extends GetxController {

  RxBool isSearching = false.obs;

  final List<CategoryList> categories = [
    CategoryList('All', logoBusiness ),
    CategoryList('Business', logoBusiness),
    CategoryList('History', logoHistory),
    CategoryList('Romance', logoArt),
    CategoryList('Political', logoPolitical),
    CategoryList('Self-dev', logoSelfDev),
    CategoryList('Novel', logoNovel),
    CategoryList('Technology', logoTechnology),
    CategoryList('Science', logoScience),
    CategoryList('Art', logoArt),
  ];
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    for (final category in categories) {
      // Pass the fetch function to fetchBooks
      category.fetchBooks(() => Api().getCategoryData(category.name, category.image));
    }
  }
}