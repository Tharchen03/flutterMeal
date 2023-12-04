

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // referencce our box
  final _myBox = Hive.box('mybox');

  // runn 1s time ever open this app
  void createInitialData() {
    toDoList = [
      ['make CRUD', false],
      ['do EXP', false],
    ];
  }

  // load the data 
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  // uodate DB 
  void updateDatbase() {
    _myBox.put("TODOLIST", toDoList);
  }

}
