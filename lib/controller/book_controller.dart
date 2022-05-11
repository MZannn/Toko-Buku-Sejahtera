import 'package:get/get.dart';
import 'package:moderna/models/api/book_api.dart';
import 'package:moderna/models/book_model.dart';

class BookController extends GetxController {
  RxList<BookModel> allDataBook = <BookModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllDataBook();
  }

  void getAllDataBook() async {
    RxList<BookModel> data = await BookApi().getAllDataBook();
    allDataBook = data;
  }
}
