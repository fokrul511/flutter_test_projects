import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  mySnakeBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.purple,
        duration: const Duration(seconds: 1),
        content: Text(message),
      ),
    );
  }

  myAlartDiylog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text('Welcome Ostad'),
            content: Text('Do You Want to delate'),
            actions: [
              TextButton(
                  onPressed: () {
                    mySnakeBar('Delete', context);
                    Navigator.of(context).pop();
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('No')),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                myAlartDiylog(context);
              },
              child: Text('Alart Button')),
        ),
      ),
    );
  }
}
