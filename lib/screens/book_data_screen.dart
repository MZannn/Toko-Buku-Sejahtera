import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:moderna/controller/book_controller.dart';
import 'package:moderna/models/book_data_models.dart';

class BookDataScreen extends StatelessWidget {
  BookDataScreen({Key? key}) : super(key: key);

  final bookC = Get.put(BookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Buku"),
        backgroundColor: const Color.fromARGB(255, 4, 52, 92),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(255, 4, 52, 92),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                int addIndex = index + 1;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      addIndex.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      bookC.allDataBook[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id', decimalDigits: 0, symbol: '')
                          .format(bookC.allDataBook[index].price),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              itemCount: bookC.allDataBook.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.white30,
                  thickness: 1,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
