import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:moderna/models/book_model.dart';

class BookApi {
  final _baseUrl =
      'https://api.kontenbase.com/query/api/v1/b1a122d7-1fed-4c3a-ad9b-feaa8c0fd2e8/book';

  Future getAllDataBook() async {
    final _response = await Dio().get(_baseUrl);
    RxList<BookModel> _data = <BookModel>[].obs;

    List<dynamic> allDataBook = _response.data;

    for (var element in allDataBook) {
      _data.add(BookModel.fromJson(element));
    }

    return _data;
  }
}
