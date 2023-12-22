import 'package:flutter/material.dart';

import 'list.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              mysnakeBar(context, "Call From ${listItem[index]['phone']!}");
            },
            child: ListTile(
              title: Text(listItem[index]['name']!,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold)),
              subtitle: Text(listItem[index]['phone']!,
                  style: const TextStyle(fontSize: 21)),
              leading: const Icon(
                Icons.person,
                size: 35,
              ),
              trailing: const Icon(
                Icons.call,
                color: Colors.green,
                size: 30,
              ),
            ),
          );
        },
      ),
    );
  }
}
