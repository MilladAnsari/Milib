import 'package:flutter/material.dart';
import 'Book.dart';
import 'Mycard.dart';
class BookCollection3 extends StatelessWidget{
  String title;
  BookCollection3({
    required this.title
  });
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,

      children: [
        Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25
            ),
          ),
        ),
        MyCard(book: Book(name: "b2",
            imageUrl: "https://newcdn.fidibo.com/images/books/96117_89955_normal.jpg"),),
        MyCard(book: Book(name: "b3",
            imageUrl: "https://newcdn.fidibo.com/images/books/7345_72625_normal.jpg?width=200"),),
        MyCard(book: Book(name: "b4",
            imageUrl: "https://newcdn.fidibo.com/images/books/81622_24744_normal.jpg?width=200"),),
        MyCard(book: Book(name: "b5",
            imageUrl: "https://newcdn.fidibo.com/images/books/70130_34209_normal.jpg?width=200"),),
        MyCard(book: Book(name: "b1",
            imageUrl: "https://newcdn.fidibo.com/images/books/64175_39492_normal.jpg"),),
      ],
    );
  }
}