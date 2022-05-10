import 'package:flutter/material.dart';
import 'package:moderna/models/book_data_models.dart';

class BookDataScreen extends StatelessWidget {
  const BookDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Buku"),
        backgroundColor: const Color.fromARGB(255, 4, 52, 92),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Card(
          elevation: 10,
          color: const Color.fromARGB(255, 4, 52, 92),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data[index].id,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      data[index].namaBuku,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      data[index].hargaBuku,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
              itemCount: data.length,
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
