
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

void usertapped() {
print('users tapped la');
}

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: usertapped,
            // () {
            //   // does smth when the users tap on the Container
            //   print('users tapped la');

            // },
            child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Center(child: Text('tap me!')),
            ),
          ),
         
     
          
       
          ),
      ),
    );
  }
}