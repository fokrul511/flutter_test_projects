import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Module 7 -class 1',//
          ),
          backgroundColor: Colors.green,
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title: Text(
                          'Show title',
                          style: TextStyle(color: Colors.red),
                        ),
                        content: Text('Do you want Out this apps'),
                        actions: [
                          TextButton(onPressed: () {}, child: Text('cancel'))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.menu),
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://img.'
                      'freepik.com/free-vector/gradient-liquid-mobille-wa'
                      'llpaper_79603-461.jpg?size=6'
                      '26&ext=jpg&ga=GA1.1.1546980028.1702684800&semt=ais'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: TextField(
              //     decoration: InputDecoration(
              //       enabled: true,
              //       enabledBorder: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(30)),
              //       prefixIcon: Icon(
              //         Icons.search,
              //         color: Colors.white,
              //       ),
              //       label: Text(
              //         'Search Here',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
              Text(
                'Git Repo:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://opengraph.'
                          'githubassets.com/264ebcfd0b084d197823ff5536219e55fc0a5ee'
                          '30009a4cc03bddbe63d2adf26/fokrul511/MPI-Flutter-Projects'),
                      fit: BoxFit.cover),
                ),
                height: 200,
                width: double.infinity,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About This Repo:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesett'
                      'ing industry. Lorem Ipsum has been the industrys'
                      ' standard dummy text ever since the 1500s, when an unknown p'
                      'rinter took a galley of type and scrambled it to make'
                      ' a type specimen book.',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              // RichText(
              //   text: TextSpan(
              //     text: 'hello',
              //     style: TextStyle(fontSize: 20,color: Colors.red),
              //     children: [
              //       TextSpan(text: ' hi',style: TextStyle(color: Colors.white)),
              //     ],
              //   ),
              // ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zmx1dHRlcnxlbnwwfHwwfHx8MA%3D%3D'))),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1555949963-ff9fe0c870eb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'))),
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      // width: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Show More'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(
                        double.infinity,
                        40,
                      ),
                      textStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
