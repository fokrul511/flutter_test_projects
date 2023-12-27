import 'package:flutter/material.dart';
import 'package:flutter_test_projects/profile.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>HomePage(),
        '/profile':(context)=>Profile(),
      },
    );
  }
}


