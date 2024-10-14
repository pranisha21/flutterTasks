import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: const Text(
            "Netflix Demo ",
            style: TextStyle(
              fontSize:25,
              color: Colors.red,
              fontWeight: FontWeight.w500
            ),
          ),centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics:const BouncingScrollPhysics(), 
          itemBuilder: (BuildContext context,int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Movies Collection",
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtWwq7nz9eI46qdO9bxv1gJhnB4qFSCtf9KA&s",
                        ),
                      ), Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00040648-rxtfdjpkgs-portrait.jpg",
                        ),
                      ),
                       Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://c8.alamy.com/comp/2JFX06B/warrior-poster-300-rise-of-an-empire-2014-2JFX06B.jpg",),),
                        Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,fl_progressive,q_auto,w_1024/648963d5dc848d001d7e353d.jpg",
                        ),
                        ),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network( "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRliG0AI63kaKv-hCNxjkCjcNXOt3E2Jik5Dg&s",
                        ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmdyE-hYMPyYqG4c5pgO3hqjk_LUq9LyXEsPeuP007Nwsrysg53ToDakqUR-cW0W3gu8M&usqp=CAU",
                        ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-b0mYJKtH63FdOex3L3mEPP5CW6dog-xRoQ&s",
                        ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network( "https://m.media-amazon.com/images/M/MV5BYTRmOTk2ZDYtY2Q3Mi00MGYwLWFjNDQtYTliODc3NzM1ZjBlXkEyXkFqcGc@._V1_.jpg",
                         ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network( "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjkhkzFint78NGN_Ml5IUc4gSLGlXN6Zim3feBqfCgeJzqS3p4fQKT6zxTuvWOJFuU7H8&usqp=CAU",
                        ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWKruPb5wtn3FkU2bDEzf5d39z6BBW6L9ZQPcQR1wh-ecpZu6--2uj4kjQEmJvNAKfR7s&usqp=CAU",
                        ),),
                         Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://upload.wikimedia.org/wikipedia/en/3/3b/URI_-_New_poster.jpg",
                        ),
                        ),
                    ],
                  ),
                )
              ],

            
        );
          },
    ),
      ),
    );
  }
}


