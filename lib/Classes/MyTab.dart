import 'package:flutter/material.dart';
import 'package:untitled2/Classes/Bookcollection.dart';

import 'BookCollection2.dart';
import 'BookCollection3.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: BookCollection(title: "   Favorite:          ")),
        Expanded(child: BookCollection2(title: "  New release:   ",)),
        Expanded(child: BookCollection3(title: "  Top selling:      ",)),
      ],
    );
  }
}
