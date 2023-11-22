// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:levels/list_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  const Second({Key? key, required this.numbers}) : super(key: key);
  final List<int> numbers;

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberProviderModel.add(); // Assuming add() is a method in NumberListProvider
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
          backgroundColor: const Color.fromARGB(31, 175, 33, 33),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numberProviderModel.numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numberProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numberProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
