import 'package:get/get.dart';
import 'package:readiverse_app/models/book_model.dart';
import 'package:readiverse_app/services/fetch_api.dart';

class DetailController extends GetxController {
  RxBool isLoading = true.obs;
  late final Book book;

  DetailController(String bookId) {
    book = Book();
    fetchBookDetails(bookId);
  }// Initialize book in the constructor

  @override
  void onInit() {
    super.onInit();

    // print(fetchBookDetails(bookId));
  }

  Future<void> fetchBookDetails(String bookId) async {
    try {
      print('Fetching book details for ID: $bookId');

      final bookData = await Api().getDetailBook(bookId);

      print('Received book details: $bookData');

      book = bookData;

      print('Updated book data: $book');
    } catch (error) {
      print('Error fetching book details: $error');
    }
  }
}

