// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:levels/list_provider.dart';
import 'package:levels/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, numberProviderModel, child) => Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numberProviderModel.add();
          // Uncomment the code related to the 'numbers' list
          // int last = numbers.last;
          // setState(() {
          //   numbers.add(last + 1);
          // });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          'Hello there',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(
            31, 175, 33, 33), // Set your desired background color
        // Remove the shadow
        elevation: 0,
      ),
      body:  SizedBox(
          child: Column(
            children: [
              Text(
                numberProviderModel.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numberProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numberProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Second(numbers: numberProviderModel.numbers),
                    ),
                  );
                },
                child: Text('second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
