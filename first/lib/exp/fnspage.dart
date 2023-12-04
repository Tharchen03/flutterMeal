
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:first/pages/Second_page.dart';
import 'package:first/pages/first_page.dart';
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
      home: FirstPage(),
      routes: {
        '/secondpage':(context) => SecondPage(),
         '/firstpage':(context) => FirstPage(),

      },
    );
  }
}