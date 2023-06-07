import 'package:flutter/material.dart';
import 'package:untitled2/Classes/MyTab.dart';
import 'package:untitled2/Classes/Mycard.dart';

import '../Classes/Book.dart';
import '../Classes/MyTab2.dart';

class HomePage extends StatelessWidget {
  Book book = Book(name: "name", imageUrl: "https://newcdn.fidibo.com/images/books/63281_53977_normal.jpg?width=200");
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            MyCard(
                book: book
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.menu_book_outlined,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.keyboard_voice_outlined,
                    color: Colors.deepPurple,
                  ),
                )
              ]
            ),
            Expanded(
              child: TabBarView(
                  children: [
                    MyTab(),
                    MyTab2()
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
