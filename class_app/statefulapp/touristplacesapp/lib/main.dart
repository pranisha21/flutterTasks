import 'package:flutter/material.dart';

void main() {
  runApp(const TouristApp());
}

class TouristApp extends StatefulWidget {
  const TouristApp({super.key});
  @override
  State<TouristApp> createState() => _TouristAppState();
}

class _TouristAppState extends State<TouristApp> {
  int _count = 0;
  List<String> placesList = <String>[
    "https://i.insider.com/5d3b004d2516e949fa4523b6?width=800&format=jpeg&auto=webp",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROMeX0bDxGz_CA7pGGsFLSoH2-UCDzlwgnnQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSupXgAEAl2L6HMG2TfgCWExWUuoG0tn_gbVw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxT7yrfLUPc-XH6KCZapND2NGb-O1vHtLi8w&s",
    "https://travenjo.com/wp-content/uploads/2022/06/Nohkalikai-Falls-3-gaimg.jpg?x84619",
    "https://imgmedia.lbb.in/media/2024/08/66cef61dc1f52054ac00c6b8_1724839453031.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Places',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Tourist Places"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                placesList[_count],
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_count < placesList.length - 1) {
              _count++;
            } else {
              _count = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
