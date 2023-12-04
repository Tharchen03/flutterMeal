// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:first/pages/home_page.dart';
import 'package:first/pages/profile_page.dart';
import 'package:first/pages/setting_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // to keep track of the pages
  int _selectedIndex = 0;

  // method to update the selected index 
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List _pages = [
    // home
    HomePage(),

    // profile
    ProfilePage(),

    // setting
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('F I R S T   P A G E'),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent[100],
        currentIndex: _selectedIndex,
        onTap:_navigateBottomBar,
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'H O M E',
          ),

          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'P R O F I L E',
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'S E E T I N G',
          ),
        ],
      ),
    );
  }
}
