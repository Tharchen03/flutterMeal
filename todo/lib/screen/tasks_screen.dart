// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screen/add_task_screen.dart';
import 'package:todo/widget/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // Widget buildBottomSheet(BuildContext context) => Container();
  List<Task> tasks = [
    // Task(name: 'buy milk'),
    // Task(name: 'buy oranges'),
    // Task(name: 'buy tomato'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          // input a new task
          showModalBottomSheet(
            context: context,
            // builder: buildBottomSheet,
            builder: (context) => AddTaskScreen((newTaskTitle) {
              // print(newTaskTitle);
              setState(() {
                tasks.add(
                  Task(name: newTaskTitle),
                );
              });
              Navigator.pop(context);
            }),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 60.0,
              left: 30.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.grey,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'T O - D O T A Y',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(tasks: tasks),
            ),
          ),
        ],
      ),
    );
  }
}
