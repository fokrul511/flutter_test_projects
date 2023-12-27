import 'package:flutter/material.dart';
import 'list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  mySankeBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              print('call');
            },
            title: Text(
              contactList[index]['Name']!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(contactList[index]['Phone']!,
                style: TextStyle(fontSize: 18)),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
