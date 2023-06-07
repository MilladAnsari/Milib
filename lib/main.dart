import 'package:flutter/material.dart';
import 'package:untitled2/screens/LibraryScreen.dart';
import 'package:untitled2/screens/LoginScreen.dart';
import 'package:untitled2/screens/LoginScreen2.dart';
import 'package:untitled2/screens/LoginScreen3.dart';
import 'package:untitled2/screens/HomeScreen.dart';
import 'package:untitled2/screens/Template.dart';
import 'package:untitled2/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: LibraryScreen(),
    );
  }
}