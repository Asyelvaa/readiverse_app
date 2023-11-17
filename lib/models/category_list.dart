import 'package:get/get.dart';
import 'package:readiverse_app/helpers/constant/images.dart';
import 'package:readiverse_app/models/category_model.dart';

class categoryList extends GetxController{
  
  RxList categorylist = [].obs;
  @override
  void onInit() {
    super.onInit();
    categorylist.value = categories;
  }
  List<BookCategory> categories = [
    BookCategory(
      categoryTitle: 'Business',
      categoryLink: 'business',
      iconLink: logoBusiness
    ),
    BookCategory(
      categoryTitle: 'History',
      categoryLink: 'history',
      iconLink: logoHistory
    ),
    BookCategory(
      categoryTitle: 'Novel',
      categoryLink: 'novel',
      iconLink: logoNovel
    ),
    BookCategory(
      categoryTitle: 'Art',
      categoryLink: 'art',
      iconLink: logoArt
    ),
    BookCategory(
      categoryTitle: 'Political',
      categoryLink: 'political',
      iconLink: logoPolitical
    ),
    BookCategory(
      categoryTitle: 'Technology',
      categoryLink: 'technology',
      iconLink: logoTechnology
    ),
    BookCategory(
      categoryTitle: 'Self Development',
      categoryLink: 'self-development',
      iconLink: logoSelfDev
    ),
    BookCategory(
      categoryTitle: 'Science',
      categoryLink: 'science',
      iconLink: logoScience
    ),
  ];
}

