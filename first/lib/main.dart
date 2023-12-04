// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:first/todo/index.dart';
import 'package:first/todo/todo_page.dart';
import 'package:first/pages/Second_page.dart';
import 'package:first/pages/first_page.dart';
import 'package:first/pages/home_page.dart';
import 'package:first/pages/profile_page.dart';
import 'package:first/pages/setting_page.dart';
import 'package:first/statefull/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';


void main() async{
  // init the hive 
  await Hive.initFlutter();
  //  open a box 
  var box = await Hive.openBox('mybox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void usertapped() {
    print('users tapped la');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
       ),
      routes: {
        '/secondpage': (context) => SecondPage(),
        '/firstpage': (context) => FirstPage(),
        '/settingpage': (context) => SettingPage(),
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/counterpart': (context) => CounterPage(),
        '/todopage': (context) => ToDoPage(),
      },
    );
  }
}
