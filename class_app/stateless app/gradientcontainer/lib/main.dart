import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
     print("Device width:${MediaQuery.of(context).size.width}");
    print("Device height:${MediaQuery.of(context).size.height}");
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:  const Text(
          "Container Demo",
          style: TextStyle(fontSize: 20,

          fontWeight: FontWeight.w400),
        ),centerTitle: true,
        backgroundColor: Colors.blue),
        body: Center(
          child:Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomLeft,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purple,
                  Colors.black,
                ],
              )
            ),child: const Text(
              "Core2Web",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ),
      ),
    );
  }
}
