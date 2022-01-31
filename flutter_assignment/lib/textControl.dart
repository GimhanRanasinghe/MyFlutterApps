import 'package:flutter/material.dart';
import './textOut.dart';

class TextControl extends StatelessWidget {
  final text;
  
  Function changeText;

  TextControl(this.changeText,this.text);

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            children: <Widget>[
              TextOut(text),
              RaisedButton(
                color: Colors.blue,
                child: Text("Press"),
                onPressed: changeText,
              ),
            ],
          ),
        );
  }
}