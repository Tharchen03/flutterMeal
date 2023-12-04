
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.amber,

            ),
             Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 21, 21, 21),

            ),
             Container(
              height: 100,
              width: 100,
              color: const Color.fromARGB(255, 127, 123, 110),

            ),
          ],
          
       
          ),
      ),
    );
  }
}