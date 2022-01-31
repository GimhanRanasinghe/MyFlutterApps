import 'package:flutter/material.dart';

class TextOut extends StatelessWidget {
  final String text;

  TextOut(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }
}
