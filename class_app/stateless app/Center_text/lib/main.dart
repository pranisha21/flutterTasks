import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text("alignment of text"),
        ),
        body:Center(
          child: Text('Core to Web',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
