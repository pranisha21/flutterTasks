import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp>createState()=>_MainAppState();}

  class _MainAppState extends State<MainApp>{
    TextEditingController nameController=TextEditingController();
    String? myName;
    List<String> playerList=[];
    @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Aspect Ratio demo",
  style: TextStyle(
    fontSize: 30,
  ),),centerTitle: true,
  backgroundColor: Colors.blue,

        
        ),
        body: Center(
          child: Container(
            height: 937,
            width: 704,
            color: Colors.black,
            child: Image.network("https://huggingface.co/datasets/huggingfacejs/tasks/resolve/main/image-classification/image-classification-input.jpeg"),          ),
        ),
      ),
    );
  }
}
