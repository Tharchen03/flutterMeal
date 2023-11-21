// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/widget/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}