import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyGoMoonApp()); //initiate app
}

class MyGoMoonApp extends StatelessWidget {
  const MyGoMoonApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go to Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1),
      ),
      home: const HomePage(),
    );
  }
}
