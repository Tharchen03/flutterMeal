// ignore_for_file: prefer_const_constructors

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
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text('This Is AppBar'),
          backgroundColor: Colors.blue[200],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout),),],

        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            // color:Colors.blue[200],
            decoration: BoxDecoration(
              color:Colors.blue[50],
              //curve the coners a bit
              borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.all(25),
            // child: Text(
            //   'sherab tharchen',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 28,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   ),
              child: Icon(
                Icons.qr_code,
                color: Colors.black,
                size: 64,

              ),
          ),
        ),
      ),
    );
  }
}
