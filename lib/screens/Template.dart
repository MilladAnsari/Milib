import 'package:flutter/material.dart';

class HorizontalListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal List Example'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal, // set the scroll direction to horizontal
        children: [
          Container(
            width: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            color: Colors.green,
          ),
          Container(
            width: 200,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
