// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    required this.poweredBy,
    required this.id,
    required this.price,
    required this.title,
  });

  String poweredBy;
  String id;
  int price;
  String title;

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        poweredBy: json["__powered_by"],
        id: json["_id"],
        price: json["price"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "__powered_by": poweredBy,
        "_id": id,
        "price": price,
        "title": title,
      };
}
