import 'package:flutter/material.dart';

class Namedc extends StatelessWidget {
  final String description;

  Namedc(this.description);

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

class Descriptor extends StatelessWidget {
  final String description;

  Descriptor(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.justify,
    );
  }
}

class EntryNo extends StatelessWidget {
  final String description;

  EntryNo(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: TextStyle(
        color: Colors.grey[500],
      ),
      textAlign: TextAlign.justify,
    );
  }
}
