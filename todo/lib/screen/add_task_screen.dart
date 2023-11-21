// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                // Your onPressed callback logic goes here
              },
              child: Text(
                'Add a Task',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                // Set the background color here
              ),
            ),
          ],
        ),
      ),
    );
  }
}
