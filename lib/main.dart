import 'package:flutter/material.dart';
// import 'package:flutter_test_projects/home_screen.dart';

import 'home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(      debugShowCheckedModeBanner: true,
      title: 'Tab bar',
      home: MyHomePage(),//home page
    );
  }
}
