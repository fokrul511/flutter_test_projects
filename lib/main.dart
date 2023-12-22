import 'package:flutter/material.dart';
import 'package:flutter_test_projects/home_screen.dart';

import 'grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      home: HomePage(),//home page
    );
  }
}
