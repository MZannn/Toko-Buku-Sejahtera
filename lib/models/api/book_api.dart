import 'package:dio/dio.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:moderna/models/book_model.dart';

class BookApi {
  final _baseUrl =
      'https://api.kontenbase.com/query/api/v1/cd2c7726-a8e0-479f-a073-c843b3a92d38/book';

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
