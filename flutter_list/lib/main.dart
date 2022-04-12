// Coded by Captain N (Ahmad Nuruddin)
// List app for MAD Class

import 'package:flutter/material.dart';
import './dragondb.dart';

void main() {
  runApp(const NApp());
}

class NApp extends StatelessWidget {
  const NApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var entry = dragonData;
    return MaterialApp(
      title: 'DragonDex',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NDragoDex'),
        ),
        body: ListView(children: [
          promptSection,
          dropDown(),
          //Display
        ]),
      ),
    );
  }
}

Widget promptSection = Container(
  padding: const EdgeInsets.all(16),
  child: Row(children: [
    Expanded(
        child: Column(
      children: [
        const Text(
          'Select an entry no:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'エントリー番号を選ぶ:',
          style: TextStyle(
            color: Colors.grey[500],
          ),
        )
      ],
    ))
  ]),
);

class dropDown extends StatefulWidget {
  const dropDown({Key? key}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDown();
}

class _dropDown extends State<dropDown> {
  String dropdownValue = '000';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: DropdownButton<String>(
          value: dropdownValue,
          hint: Container(
              alignment: Alignment.centerRight,
              width: 180,
              child: const Text('Drago Entry No', textAlign: TextAlign.end)),
          elevation: 16,
          style: const TextStyle(
            color: Colors.blueAccent,
          ),
          underline: Container(height: 2, color: Colors.blueAccent),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            '000',
            '001',
            '002',
            '003',
            '004',
            '005',
            '006',
            '007',
            '008'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                textAlign: TextAlign.center,
              ),
            );
          }).toList(),
        ));
  }
}
