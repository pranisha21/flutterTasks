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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text(
           "Listveiw demo",
           style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500),
           ),
           centerTitle: true,
           backgroundColor: Colors.blue,

          ),
        body:ListView(children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvqAJJGmaQNEAMApjismY6CS4BAQwEUQEW9w&s",
          ),
          const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          const Text(
            "Naruto hinata",
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR9GKkHnZ4bOSP2-3w5cn36VuFtp4tQl49pw&s",
          ),
          GestureDetector(
            onTap: () {
              print("Button Preesed");

            },child: Container(
              height:50,
              color: Colors.green,
              child: const Text("Press me",
              ),

           ),
          )
        ],
        ),
        ),
      );
    
  }
}
