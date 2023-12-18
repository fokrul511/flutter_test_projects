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
        appBar: AppBar(
          title: Text('flutter apps'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Flutter projects',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '1',
                  style: textStyle,
                ),
                Text(
                  '3',
                  style: textStyle,
                ),
                Text(
                  '4',
                  style: textStyle,
                ),
                Text(
                  '5',
                  style: textStyle,
                ),
                Text(
                  '6',
                  style: textStyle,
                ),
                Text(
                  '7',
                  style: textStyle,
                ),
                Text(
                  '8',
                  style: textStyle,
                ),
                Text(
                  '9',
                  style: textStyle,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Fokrul Islam',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/73265474?v=4'),
              width: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Fokrul Islam',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Image(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/73265474?v=4'),
              width: 200,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('simple Projecs'),
                        content: Text('about this projecs apps'),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                          ),
                        ],
                      );
                    });
              },
              child: Text('tap here'),
            ),
            SizedBox(height: 10),
            Spacer(),
            //RichText.....
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: '@copyright by: ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                        text: 'fokrulIslam@.com ',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        )),
                    // TextSpan(text: 'Ostad',style: TextStyle(color: Colors.blueAccent))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
