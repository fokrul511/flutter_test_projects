import 'package:flutter/material.dart';


mysnakeBar(context, message) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: Colors.purple,
    duration: const Duration(seconds: 1),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My apps'),
            bottom: TabBar(tabs: [
              Icon(Icons.call),
              Icon(Icons.home),
              Icon(Icons.call),
            ]),
          ),
        ));
  }
}
