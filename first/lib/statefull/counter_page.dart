// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
// variable
  int _counter = 0;

// method
  void _incrementCounter() {
    // setstate rebuilds the widget
    setState(() {
      _counter++;
    });
  }

// UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // message
          Text("u clicked this many times"),

          // counter value
          Text(
            _counter.toString(),
            style: TextStyle(fontSize: 40),
          ),

          // button
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text("INCREMENT!"),
          ),
        ]),
      ),
    );
  }
}
