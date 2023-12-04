// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to First page'),
          onPressed: () {
            // navigate to second page
            // Navigator.push(
            //   context,
            //    MaterialPageRoute(
            //     builder: (context) => SecondPage(),
            //     ),
            //     );

            // other way
            Navigator.pushNamed(context, '/firstpage');
          },
        ),
      ),
    );
  }
}
