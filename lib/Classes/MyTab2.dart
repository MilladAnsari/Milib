import 'package:flutter/material.dart';
import 'package:untitled2/Classes/Bookcollection.dart';

import 'BookCollection2.dart';
import 'BookCollection3.dart';

class MyTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: BookCollection2(title: "Favorite:        ")),
        Expanded(child: BookCollection3(title: "New release:",)),
        Expanded(child: BookCollection(title: "Top selling:   ",)),
      ],
    );
  }
}
