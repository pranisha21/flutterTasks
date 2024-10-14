import 'package:flutter/material.dart';

void main() {
runApp(const AppbarColorApp());
}class AppbarColorApp extends StatefulWidget {
const AppbarColorApp({super.key});
@override
State<AppbarColorApp> createState() => _AppbarColorAppState();
}class _AppbarColorAppState extends State<AppbarColorApp> {
bool colorChange = true;
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: "Appbar Colour ",
home: Scaffold(
appBar: AppBar(
title: const Text("Appbar Colour App"),
centerTitle: true,
backgroundColor: (colorChange) ? Color.fromRGBO(74, 6, 177, 1) : Color.fromARGB(255, 10, 102, 5),
),
body: const Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("ChangeAppbarcolour"),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
if (colorChange) {
colorChange = false;
}else{
colorChange=true;
}
setState(() {});
},
child: const Icon(Icons.add),
),
),
);
}
}