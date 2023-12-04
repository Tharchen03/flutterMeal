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
        // backgroundColor: Colors.blue[100],
        // appBar: AppBar(
        //   title: Text('This Is AppBar'),
        //   backgroundColor: Colors.blue[200],
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout),),],

        // ),
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //1
            Container(
              height: 600,
              // width: 200,
              color: Colors.blue[400],
            ),
            //2
             Container(
              height: 600,
              // width: 200,
              color: Colors.blue[300],
            ),
            //3    
             Container(
              height: 600,
              // width: 200,
              color: Colors.blue[200],
            )       
          ],
        )
      ),
    );
  }
}
