import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  print('hi there');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Variables
  String name = 'tharchen';
  int age = 20;
  double pi = 3.14;
  bool isBeginner = false;

  /*
    1 + 1 -> 2, add
    1 - 1 = 0, sub
    2 * 2 = 4, mul
    8 / 4 = 2, div
    9 % 4 -> 1, remainder
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter App'),
        ),
        body: Center(
          child: Text(
            'Hello, $name!\nAge: $age\nπ: $pi\nIs Beginner: $isBeginner',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
