// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:first/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          // get user input 
          TextField(
            controller:controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Add a new task',
              ),
          ),
          // buttons => save/cancel 
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button 
              MyButton(text: "save", onPressed: onSave),

              const SizedBox(width: 8,),

              // cancell 
              MyButton(text: "cancel", onPressed: onCancel),

            ],
          )



        ]),
      ),

    );
  }
}