import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),);

  }
}class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
      State createState()=> _QuizAppState();

  }class _QuizAppState extends State{
    List<Map> allQuestions =  [
      {
        "question":"Who is founder of microsoft ? ",
        "options":["Steve jobs","Bill gates","Lary page","Elon musk"],
        "correctanswer":1
      },{
         "question":"who is founder of google? ",
        "options":["Steve jobs","Bill gates","Lary page","Elon musk"],
        "correctanswer":2
      },{
         "question":"who is founder of Spacex? ",
        "options":["Steve jobs","Bill gates","Lary page","Elon musk"],
        "correctanswer":3
      },{
         "question":"who is founder of Apple? ",
        "options":["Steve jobs","Bill gates","Mark zukerberg","Elon musk"],
        "correctanswer":0
      },{
         "question":"who is founder of meta? ",
        "options":["Steve jobs","Bill gates","mark zukerberg","Elon musk"],
        "correctanswer":3
      },
    
    ];
    int cureentQuestionsIndex =0;
    int selectAnswerIndex=-1;
    int score=0;
    WidgetStateProperty<Color?>checkAnswer(int answerIndex){
      if(selectAnswerIndex !=-1){
        if(answerIndex==
        allQuestions[cureentQuestionsIndex]["correctanswer"]){
          return const WidgetStatePropertyAll(Colors.green);

        }else if(selectAnswerIndex==answerIndex){
          return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(Colors.white);
      }}else{
        return const WidgetStatePropertyAll(Colors.white);
      }}
      void resetQuiz(){
        setState(() {
          cureentQuestionsIndex=0;
          selectAnswerIndex=-1;
          score=0;
          questionPage=true;
        });
      }
      bool questionPage=true;
    @override
    Widget build (BuildContext context){
      return isQuestionScreen();
    }
     Scaffold isQuestionScreen(){
      if(questionPage==true){
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color:Colors.black
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
      ),body:Column(
        children: [
          const SizedBox(
        height: 30,
        ),
        Row(
          children: [
            const SizedBox(
              width: 130,),
              Text(
                "Question : ${cureentQuestionsIndex +1}/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
                ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 380,
          height: 50,
          child: Text(
            allQuestions[cureentQuestionsIndex]["question"],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color:Colors.black,

            ),
          ),

        ),
        const SizedBox(
          height: 50,

        ),
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(0),
            ), onPressed: (){
              if (selectAnswerIndex==-1){
                selectAnswerIndex=0;
                if(selectAnswerIndex==allQuestions[cureentQuestionsIndex]["correctanswer"]){
                score++;
                }
                setState((){}
                );
              }
            },
            child: Text("A. ${allQuestions[cureentQuestionsIndex]["options"][0]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color:Colors.black,
              ),
            ),
           ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(1),
            ), onPressed: (){
              if (selectAnswerIndex==-1){
                selectAnswerIndex=1;
                setState(() {});
              }},
            child: Text("B. ${allQuestions[cureentQuestionsIndex]["options"][1]}",
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              ),
              ),
              ),
              const SizedBox(
                height: 25,

              ),
              SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: checkAnswer(2),
            ), onPressed: (){
              if (selectAnswerIndex==-1){
                selectAnswerIndex=2;
                setState(() {});}},
            child: Text("C. ${allQuestions[cureentQuestionsIndex]["options"][2]}",
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                ),
              ),
            ),
            ),
          const SizedBox(
            height: 25,
          ),SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
             onPressed: (){
              if (selectAnswerIndex==-1){
                selectAnswerIndex=2;
                setState(() {});}},
                 style:ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
              child: Text("D. ${allQuestions[cureentQuestionsIndex]["options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:()
            {if(selectAnswerIndex!=-1)
            {
              if (cureentQuestionsIndex < allQuestions.length-1){
              cureentQuestionsIndex++;
              }else{
                questionPage=false;

              }selectAnswerIndex=-1;
              setState(() {});
              }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color:Colors.white,
          ),
          ),
          );
          }else {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Quiz Result",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                ),
                centerTitle: true,
                backgroundColor: Colors.blue,

              ),
              body: Center(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQF1S0rmkXf8aYdLUOJdvyr5-K4HHMwCMfx_A&s",
              width:400,
              height: 300,
              fit:BoxFit.cover,
              ),
              const SizedBox(
                height: 30),
                const Text(
                  "Congratulations !",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.orange,
                  ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    " Score :$score/${allQuestions.length}",
                    style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w600,
                    ),
                    ),const SizedBox(
                      height: 40),
                    ElevatedButton
                    (onPressed: resetQuiz,
                     child: const Text(
                      "Retake Quiz",
                      style: TextStyle(
                        fontSize:30,
                        color: Colors.white
                        ),
                     ),style:
                      ButtonStyle(backgroundColor:
                      WidgetStatePropertyAll(Colors.blue),
                      ),
                      ),
              ],
            ),
            ),
            );
          }
          }
          }
        