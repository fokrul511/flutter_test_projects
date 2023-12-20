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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://img.'
                'freepik.com/free-vector/gradient-liquid-mobille-wa'
                'llpaper_79603-461.jpg?size=6'
                '26&ext=jpg&ga=GA1.1.1546980028.1702684800&semt=ais'), fit: BoxFit.cover)
          ),
          child: Column(
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
      ),
    );
  }
}
