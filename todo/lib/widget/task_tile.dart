// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("this is A Task"),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}