import 'package:flutter/material.dart';

var contactList = [
  {"title": "Dipon Deb", "Department": "Computer", "number": "01300-00000"},
  {"title": "John Doe", "Department": "HR", "number": "01234-567890"},
  {"title": "Alice Smith", "Department": "Marketing", "number": "02345-678901"},
  {"title": "Bob Johnson", "Department": "Finance", "number": "03456-789012"},
  {"title": "Emma Brown", "Department": "IT", "number": "04567-890123"},
  {
    "title": "Chris Davis",
    "Department": "Operations",
    "number": "05678-901234"
  },
  {"title": "Olivia Wilson", "Department": "Sales", "number": "06789-012345"},
  {
    "title": "Daniel Lee",
    "Department": "Engineering",
    "number": "07890-123456"
  },
  {
    "title": "Sophia Kim",
    "Department": "Customer Support",
    "number": "08901-234567"
  },
  {"title": "Matthew Chen", "Department": "Research", "number": "09012-345678"},
  {"title": "Ava Patel", "Department": "Legal", "number": "00123-456789"},
  {
    "title": "Jackson Gupta",
    "Department": "Quality Assurance",
    "number": "01234-567890"
  },
  {
    "title": "Ella Nguyen",
    "Department": "Administration",
    "number": "02345-678901"
  },
  {
    "title": "Mason Khan",
    "Department": "Public Relations",
    "number": "03456-789012"
  },
  {"title": "Grace Li", "Department": "Training", "number": "04567-890123"},
  {
    "title": "Liam Sharma",
    "Department": "Project Management",
    "number": "05678-901234"
  },
  {
    "title": "Scarlett Das",
    "Department": "Human Resources",
    "number": "06789-012345"
  },
  {
    "title": "Logan Joshi",
    "Department": "Supply Chain",
    "number": "07890-123456"
  },
  {
    "title": "Lily Singh",
    "Department": "Health and Safety",
    "number": "08901-234567"
  },
  {
    "title": "Lucas Patel",
    "Department": "Facilities",
    "number": "09012-345678"
  },
  {"title": "Aria Kumar", "Department": "Events", "number": "00123-456789"}
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  //
  mySnakeBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      margin: EdgeInsets.all(16.0),
      backgroundColor: Colors.green,
      duration: Duration(seconds: 1),
      behavior: SnackBarBehavior.floating,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20.0),
      // ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'Test Projects',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                mySnakeBar(contactList[index]['Department']!, context);
              },
              child: ListTile(
                title: Text(contactList[index]['title']!),
                subtitle: Text(contactList[index]['number']!),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
                // focusColor: Colors.blue,
                // selectedColor: Colors.blue,
                iconColor: Colors.white,
                // splashColor: Colors.blue,
                textColor: Colors.white,
                tileColor: Colors.black87,
              ),
            ),
          );
        },
      ),
    );
  }
}

