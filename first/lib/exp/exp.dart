import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // print('hi there');
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // variables
  String names = 'sherab';
  int age = 55;
  double pi = 13.11;
  bool isBeginner = false;

// Functions void just returns
void greet(){
  print("hello bitches");
}
// Functions with parameter
void greetperson(String name,){
  print('hello' + name  );
}

// return functions
int add(int a, int b){
  int sum = a + b;
  return sum;

}

// Data structure
// list
List<int> number =[1,2,3,2];
List<String> name =["tharchen",'wang','thar','dang'];

void printNumber() {
  for (int i = 0; i < number.length; i++){
    print(number[i]);
  }
} 
void printName() {
  for (int i = 0; i < name.length; i++){
    print(name[i]);
  }
} 

// sets = unodered collections of elements
Set<String> uniquenames = {"tharchen1",'wang1','thar1','dang1'};

// map: stored as key-value pairs
Map users = {
  'name':"first name",
  'age': 33,
  'height': 66,



};

  @override
  Widget build(BuildContext context) {
greet();
greetperson('tharchen', );
int mySum = add(3, 5);
print(mySum);
printName();
printNumber();
print(users['name']);


    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
