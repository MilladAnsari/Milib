import 'package:flutter/material.dart';
import 'package:untitled2/Classes/MyTab.dart';
import 'package:untitled2/Classes/Mycard.dart';

import '../Classes/Book.dart';
import '../Classes/MyTab2.dart';

class LibraryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        elevation: 0,
        title: Text("L I B R A R Y"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Row(
                    children: [
                      Icon(Icons.sort_outlined),
                      Text(
                        "Sort by : ",
                        style: TextStyle(fontSize: 25),
                      ),
                    ]
                  )
              ),
              ListTile(
                title: Text("تاریخ مطالعه"),
              ),
              ListTile(
                title: Text("فایل صوتی"),
              ),
              ListTile(
                title: Text("کتاب"),
              ),
              ListTile(
                title: Text("بیشترین پسند"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}