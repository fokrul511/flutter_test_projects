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
              TextButton(onPressed: () {
                mySnakeBar('Delete', context);
                Navigator.of(context).pop();
              }, child: Text('Yes')),
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
        appBar: AppBar(
          title: const Text('Inventory app'),
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.purple,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          actions: [
            IconButton(
              onPressed: () {
                mySnakeBar('i am message', context);
              },
              icon: Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {
                mySnakeBar('i am search', context);
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                mySnakeBar('i am settings', context);
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                mySnakeBar('i am email', context);
              },
              icon: Icon(Icons.email),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.purple,
            elevation: 10,
            onPressed: () {
              mySnakeBar('i am FlotingAction button', context);
            }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Contact'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onTap: (int index) {
            if (index == 0) {
              mySnakeBar('i am Home bottom navBar', context);
            }
            if (index == 1) {
              mySnakeBar('i am Home contact navBar', context);
            }
            if (index == 2) {
              mySnakeBar('i am Home Profile navBar', context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountName: Text(
                    'Fokrul Islam',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    'info@Fokrul.com',
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/73265474?v=4'),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contact'),
                leading: Icon(Icons.message),
                onTap: () {},
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('Phone'),
                leading: Icon(Icons.call),
                onTap: () {},
              ),
              ListTile(
                title: Text('Email'),
                leading: Icon(Icons.email),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/73265474?v=4'),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/73265474?v=4'),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/73265474?v=4'),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            //
            ElevatedButton(
                onPressed: () {
                  myAlartDiylog(context);
                },
                child: Text('Button'))
          ],
        ),
      ),
    );
  }
}
