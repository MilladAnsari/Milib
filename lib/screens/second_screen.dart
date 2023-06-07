import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String queteText;
  String authorName;


  SecondScreen({Key? key, required this.queteText, required this.authorName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              queteText,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Align(alignment: Alignment.bottomRight, child: Text("- $authorName", style: TextStyle(fontSize: 30),)),
          )
        ],)
      ),
    );
  }
}
