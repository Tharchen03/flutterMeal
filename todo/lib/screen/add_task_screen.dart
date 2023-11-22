// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

final addTaskCallback;
AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';

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
              onChanged: (newText) {
                newTaskTitle = newText;
              },
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                // Your onPressed callback logic goes here
                addTaskCallback(newTaskTitle);
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
