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
    //var  questions = "Select the dragon you want to know about";
    return MaterialApp(
      title: 'DragonDex',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NDragoDex'),
        ),
        body: ListView(children: [
          promptSection,
          MyStatefulWidget(),
        ]),
      ),
    );
  }
}

Widget promptSection = Container(
  padding: const EdgeInsets.all(16),
  child: Row(
    children: const [
      Text(
        'Select a dragon you want to know about:',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(data)
    ],
  ),
);

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'one';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(
        color: Color.fromARGB(255, 62, 66, 70),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['one', 'two', 'three']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
