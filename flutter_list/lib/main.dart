// Coded by Captain N (Ahmad Nuruddin)
// List app for MAD Class

import 'package:flutter/material.dart';
//import './dragondb.dart';
// import './descriptor.dart';

void main() {
  runApp(const NApp());
}

class NApp extends StatelessWidget {
  const NApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  var entry = dragonData;
    return MaterialApp(
      title: 'DragonDex',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NDragoDex'),
        ),
        body: ListView(children: [promptSection, DropDown(), dragoContent]),
      ),
    );
  }
}

//User Prompter
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

//DropDown Button
class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  State<DropDown> createState() => _DropDown();
}

class _DropDown extends State<DropDown> {
  String dropdownValue = '000';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: DropdownButton<String>(
          value: dropdownValue,
          hint: const Text('Drago Entry No', textAlign: TextAlign.end),
          isExpanded: true,
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

//Content
Widget dragoContent = Padding(
  padding: const EdgeInsets.all(16),
  child: Container(
    color: Colors.amberAccent,
    child: Row(
      children: [
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text('placeholder',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'data',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ]))
          ]),
          Container(
              padding: const EdgeInsets.only(top: 16),
              child: const Text(
                "Description",
              )),
        ]))
      ],
    ),
  ),
);
