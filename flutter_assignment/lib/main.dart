import 'package:flutter/material.dart';
import './TextControl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  
  var text = "Hello";
  void changeText() {
    setState(() {
      text = "World!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment"),
        ),
        body: TextControl(changeText,text),
      ),
    );
  }
}
