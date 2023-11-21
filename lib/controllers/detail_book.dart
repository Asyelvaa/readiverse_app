import 'package:get/get.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/services/fetch_api.dart';

class DetailController extends GetxController {
  late final RxList<Book> books = <Book>[].obs;


  @override
  void onInit() {
    super.onInit();
    books;
  }

  Future<void> fetchBookDetails(String bookId) async {
    try {
      final bookData = await Api().getDetailBooks(bookId);
      books.assignAll(bookData);
    } catch (error) {
      print('Error fetching book details: $error');
    }
  }
}