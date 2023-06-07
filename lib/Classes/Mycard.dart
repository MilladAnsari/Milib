import 'package:flutter/material.dart';
import 'Book.dart';

class MyCard extends StatelessWidget {
  Book book;
  MyCard({
    required this.book,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: InkWell(
            onTap: () {
              // code to handle card tap
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                book.imageUrl,
                // image of the picture
                //fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}