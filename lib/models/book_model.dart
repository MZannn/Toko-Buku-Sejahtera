// To parse this JSON data, do
//
//     final bookModel = bookModelFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    required this.price,
    required this.poweredBy,
    required this.id,
    required this.title,
  });

  int price;
  String poweredBy;
  String id;
  String title;

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        price: json["Price"],
        poweredBy: json["__powered_by"],
        id: json["_id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "Price": price,
        "__powered_by": poweredBy,
        "_id": id,
        "title": title,
      };
}
