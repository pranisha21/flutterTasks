import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "SHOESAPP",
      debugShowCheckedModeBanner: false,
      home: ShooseApp(),
    );
  }
}

class ShooseApp extends StatefulWidget{
  const ShooseApp({super.key});

  @override   
  State<ShooseApp> createState(){
    return _ShooseAppState();
  }
}

class _ShooseAppState extends  State<ShooseApp>{

int num=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: const Text("Shoes",
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 60, 6, 155),
        ),
        ),
        actions: const [
         Icon(Icons.card_travel,size: 30,color: Color.fromARGB(255, 25, 1, 66),)
        ],
        
       ),
       body: Padding(
        padding:const EdgeInsetsDirectional.all(10),
        child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300,
            
            child: Image.network('https://5.imimg.com/data5/ANDROID/Default/2022/3/GJ/DZ/IB/126766381/product-jpeg-500x500.jpg',scale: 0.3,
            ),
          ),
          const SizedBox(
               height: 10,
          ),
          const SizedBox(
            height: 50,
            child: Text("Nike Air Force 1 ''07", 
             style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400,

          ) 
          ,),
          ),
          Row(
            children: [
              Container(
                padding:const  EdgeInsetsDirectional.all(10),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 39, 5, 97),
                ),
                 child:const Text("SHOES",style: TextStyle(
            color: Colors.white,
          ),),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                padding:const  EdgeInsetsDirectional.all(10),
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 26, 2, 67),
                ),
                 child:const Text("FOOTWARE", style: TextStyle(
            color: Colors.white,
          ),),
              )
            ],
          ),
          const SizedBox(
                height: 20,
              ),
          SizedBox(
          width: MediaQuery.of(context).size.width, 
          child: const Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),),
          ),
          const SizedBox(
                height: 30,
              ),


              //quantity
           Row(
            children: [
              const Text("Quantity",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
           ),),

           //remove icon
            const SizedBox(width: 20,),
            GestureDetector(
              onTap: () {
                if(num>0){
                  num--;
                }
                setState(() {
                  
                });
              },
                child:const Icon(Icons.remove,size: 20,),
               
             ),

             const SizedBox(width: 20,),

             Container( 
                width: 30,
                height: 30,
              decoration:  BoxDecoration(
                 border: Border.all(
                  color: Colors.black,
                 ),
                borderRadius:const BorderRadius.all(Radius.circular(2)),
              
              ),
              child: Text("$num",style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
           ),
           textAlign: TextAlign.center,),
             ),
             const SizedBox(width: 20,),
             GestureDetector(
              onTap: () {
                num++;
                setState(() {
                  
                });
              },
                child:const Icon(Icons.add,size: 20,),
               
             )
            ],
          ),
           const SizedBox(
                height: 10,
              ),


          //purchase
          Padding(
            padding: const EdgeInsetsDirectional.all(10),
            child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ElevatedButton(
            
            style:const  ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)
            ),
            onPressed: (){},
            
           child:const Text("PURCHASE",
           style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
           ),
           ),
          ),
          )
          )
        ],
       ),
       ),

    );
  } 

}