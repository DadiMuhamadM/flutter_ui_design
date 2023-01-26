import 'package:flutter/cupertino.dart';

import '../thema.dart';

class BookList {
  String imageUrl;
  String writer;
  String title;

  BookList({required this.imageUrl, required this.writer, required this.title});
}

List<BookList> bookList = [
  BookList(
    imageUrl: "assets/images/trending_book_1.png",
    writer: "Enchantment",
    title: "Guy Kawasaki",
    
  ),
  BookList(
    imageUrl: "assets/images/trending_book_2.png",
    title: "Lore",
    writer: "Aaron Mahnke",
  ),
  BookList(
    imageUrl: "assets/images/trending_book_3.png",
    writer: "Spencer Johnson, M.D",
    title: "Who Moved My Cheese",
  ),
 
];
