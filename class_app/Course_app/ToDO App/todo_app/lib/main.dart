import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title:const Text("To-do List",style: TextStyle(color: Color.fromRGBO()),),
      

 
        body: Column(
          children:[
            const SizedBox(
              height:112,
              width:330,
            )
          ]
          child:Image.asset("assets/img.png"),
        ),
      ),
    );
  }
}
