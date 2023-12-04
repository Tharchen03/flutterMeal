// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('F I R S T   P A G E'),
         backgroundColor: Colors.blueAccent[100],
        
        ),
      drawer: Drawer(
        backgroundColor: Colors.blueAccent[100],
        child: Column(children: [
          // common to place  a Drawer()
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 48,
            ),
          ),

          // home page list title
          ListTile(
            leading: Icon(Icons.home),
            title: Text('H O M E'),
            onTap: () {
              // pop the drawer First
              Navigator.pop(context);
              // added navagation
              Navigator.pushNamed(context, '/homepage');
            },
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S E T T I N G S'),
            onTap: () {
              // pop the drawer First
              Navigator.pop(context);

              // added navagation
              Navigator.pushNamed(context, '/settingpage');
            },
          ),
        ]),
      ),
    );
  }
}
