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
    return MaterialApp(
      title: 'NList App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NListing'),
        ),
        body: const Center(
          child: Text('Add button Here [ここにおいてください]'),
        ),
      ),
    );
  }
}
