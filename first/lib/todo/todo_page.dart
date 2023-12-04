// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
// text editing controller
TextEditingController myController = TextEditingController();
// gretting message 
String greetingMessage = '';

// greet user method 
void greetUser() {
  String userName = myController.text;
  setState(() {
    greetingMessage = "hello, " + userName;
  });
  
}



// method


// UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              // textfeild 
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'hello mofos',
                ),
              ),
              // button 
              ElevatedButton(
                onPressed: greetUser,
                 child: Text('tap'),
                 ),
        
            ],
          ),
        ),
      ),
      
    );
  }
}
