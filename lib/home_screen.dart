import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.cyan,
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: const Text('Profile'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          children: [
           Stack(children: [
             Image.network('https://t4.ftcdn.net/jpg/05/51/97/35/360_F_551973570_VXTDIzhU4GFXslKedPVQFBUfKYbIF3OM.jpg')
           ],)
          ],
        ),
      ),
    );
  }
}
