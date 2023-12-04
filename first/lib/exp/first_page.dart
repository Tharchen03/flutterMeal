
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First page')),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second page'),
          onPressed: () {
            // navigate to second page
            // Navigator.push(
            //   context,
            //    MaterialPageRoute(
            //     builder: (context) => SecondPage(),
            //     ),
            //     );

            // other way
            Navigator.pushNamed(context, '/secondpage');

          },
        ),
      ),
    );
  }

}