import 'package:flutter/material.dart';
import 'Book.dart';
import 'Mycard.dart';
class BookCollection extends StatelessWidget{
  String title;
  BookCollection({
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
        MyCard(book: Book(name: "b1",
            imageUrl: "https://newcdn.fidibo.com/images/books/64175_39492_normal.jpg"),),
        MyCard(book: Book(name: "b2",
            imageUrl: "https://newcdn.fidibo.com/images/books/64664_88543_normal.jpg"),),
        MyCard(book: Book(name: "b3",
            imageUrl: "https://newcdn.fidibo.com/images/books/62882_79534_normal.jpg"),),
        MyCard(book: Book(name: "b4",
            imageUrl: "https://newcdn.fidibo.com/images/books/63840_67414_normal.jpg"),),
        MyCard(book: Book(name: "b5",
            imageUrl: "https://newcdn.fidibo.com/images/books/64280_35770_normal.jpg?width=200"),),
      ],
    );
  }
}