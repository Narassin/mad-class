import 'package:flutter/material.dart';

class Descriptor extends StatelessWidget {
  final String description;

  Descriptor(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style:
          TextStyle(color: Colors.blueGrey[500], fontWeight: FontWeight.bold),
      textAlign: TextAlign.justify,
    );
  }
}
