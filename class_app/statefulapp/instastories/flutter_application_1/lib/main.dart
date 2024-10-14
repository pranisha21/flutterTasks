import 'package:flutter/material.dart';

void main() {
  print("Incubators");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Coretoweb",
      home: TestApp(),
        );
  }
}class TestApp extends StatelessWidget{
  const TestApp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test app"),
        backgroundColor:Colors.amber,
      ),
      body: Container(
        height: 200,
        width: 100,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 7, 36, 255),
          shape: BoxShape.circle,
        ),),
    );
  }
  }
