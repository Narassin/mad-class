// Coded by Captain N (Ahmad Nuruddin)
// List app for MAD Class

import 'package:flutter/material.dart';

void main() {
  runApp(const NApp());
}

class NApp extends StatelessWidget {
  const NApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = 'Select the dragon you want to know about';
    return MaterialApp(
      title: 'NList App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('NListing'),
          ),
          body: const Center(
            child:Text(questions),
            MyStatefulWidget(),
          )),
    );
  }
}

class MyStatefulWidget extends StatefulWidget{
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget>createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>{
  String dropdownValue = '001';

  @override
  Widget build(BuildContext context){
  return DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Color.fromARGB(255, 62, 66, 70),
    underline: Container(
      height: 2,
      color: Colors.blue,
    ),
    
    onChanged: (String? newValue){
      setState(() {
        dropdownValue = newValue!;
      });
    },
    
    items:<String>['001','002', '003']
    .map<DropdownMenuItem<String>>((String value){
      return  DropdownMenuItem<String>(
        value: value,
        child: Text(value),
        );
    }).toList(),
    )
  );
}
