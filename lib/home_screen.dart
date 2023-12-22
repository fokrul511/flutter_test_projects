import 'package:flutter/material.dart';
import 'package:flutter_test_projects/fragement/Call_fargment.dart';
import 'package:flutter_test_projects/fragement/group_Fragmet.dart';
import 'package:flutter_test_projects/fragement/Chats.dart';
import 'package:flutter_test_projects/fragement/update_fragment.dart';

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
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Bar'),
            bottom: TabBar(
                // isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.groups)),
                  Tab(text: 'Chats'),
                  Tab(text: 'Update'),
                  Tab(text: 'Calls'),
                ]),
          ),
          body: TabBarView(children: [
            GroupFragment(),
            ChatsFragment(),
            UpdateFragment(),
            CallFragment()
          ]),
        ));
  }
}
