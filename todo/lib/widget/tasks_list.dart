// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/widget/task_tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

   const TasksList({Key? key, required this.tasks}) : super(key: key);
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toogleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
