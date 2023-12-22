import 'package:flutter/material.dart';

var randomImageList = [
  {
    'imageName': 'Nature Scene',
    'imageUrl': 'https://source.unsplash.com/600x400/?nature'
  },
  {
    'imageName': 'City Skyline',
    'imageUrl': 'https://source.unsplash.com/600x400/?city'
  },
  {
    'imageName': 'Abstract Art',
    'imageUrl': 'https://source.unsplash.com/600x400/?abstract'
  },
  {
    'imageName': 'Technology Gadgets',
    'imageUrl': 'https://source.unsplash.com/600x400/?technology'
  },
  {
    'imageName': 'Travel Adventure',
    'imageUrl': 'https://source.unsplash.com/600x400/?travel'
  },
  {
    'imageName': 'Animals Wildlife',
    'imageUrl': 'https://source.unsplash.com/600x400/?animals'
  },
  {
    'imageName': 'Food Delight',
    'imageUrl': 'https://source.unsplash.com/600x400/?food'
  },
  {
    'imageName': 'Fashion Style',
    'imageUrl': 'https://source.unsplash.com/600x400/?fashion'
  },
  {
    'imageName': 'Sports Action',
    'imageUrl': 'https://source.unsplash.com/600x400/?sports'
  },
  {
    'imageName': 'Artistic Design',
    'imageUrl': 'https://source.unsplash.com/600x400/?art'
  },
];
mySnkeBar(message, context) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: Duration(seconds: 1),
  ));
}

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Image Apps'),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
        ),
        itemCount: randomImageList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              mySnkeBar(randomImageList[index]['imageName']!, context);
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 200,
              width: double.infinity,
              child: Image.network(
                randomImageList[index]['imageUrl']!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
