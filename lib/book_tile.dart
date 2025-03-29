import 'package:ebook_app/book.dart';
import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  const BookTile({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(book.name), Text(book.author)],
    );
  }
}
