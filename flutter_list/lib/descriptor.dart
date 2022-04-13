import 'package:flutter/material.dart';

class Descriptor extends StatelessWidget {
  final String description;

  const Descriptor(this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(color: Colors.blueGrey[500]),
      textAlign: TextAlign.justify,
    );
  }
}
