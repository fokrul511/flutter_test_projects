import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Module 7 -class 1',
          ),
          backgroundColor: Colors.green,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                print('action menu bar');
              },
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: Column(
          children: [
            Text(
              ' today witch wiget implement our apps',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
