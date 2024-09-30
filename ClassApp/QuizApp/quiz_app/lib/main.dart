import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState()=> _QuizApp();
}
class _QuizApp extends State{
  List<Map> allQuestions=[
    {
      "question":"Who is founder of Microsoft?",
      "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctOption":1,
    },
    {
      "question":"Who is founder of Google?",
      "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctOption":2,
    },
    {
      "question":"Who is founder of SpaceX?",
      "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctOption":3,
    },
    {
      "question":"Who is founder of Apple?",
      "options":["Steve Jobs","Bill Gates","Lary Page","Elon Musk"],
      "correctOption":0,
    },
    {
      "question":"Who is founder of Meta?",
      "options":["Steve Jobs","Mark Zukerberg","Lary Page","Elon Musk"],
      "correctOption":1,
    }
  ];
  int totalScore=0;
  int currentQuestionIndex=0;
  int selectedAnswer=-1;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswer!=-1){
      if(answerIndex==allQuestions[currentQuestionIndex]["correctOption"]){
        return const WidgetStatePropertyAll(Colors.green);

      }else if(selectedAnswer==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }
      else{
        return const WidgetStatePropertyAll(null);
      }
    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }
  bool questionPage=true;
  @override
  Widget build(BuildContext context){
    return isQuetionScreen();
  }
  Scaffold isQuetionScreen(){
    if(questionPage==true){
      return Scaffold(
        //backgroundColor: Color.fromARGB(255, 23, 12, 62),
      appBar:AppBar(
        title:const Text("Quiz App",style:TextStyle(
          fontSize:25,
          fontWeight: FontWeight.w900,
          color:Colors.white,
        )),
        centerTitle:true,
        backgroundColor:const Color.fromARGB(255, 23, 12, 62),
      ),
      body:Column(
      
        children: [
          const SizedBox(
            height:20,
          ),
          Row(
            children: [

               const SizedBox(
                width:120,
              ),
              Text("Questions : ${currentQuestionIndex+1}/${allQuestions.length}",
              style:const TextStyle(fontSize:24,fontWeight: FontWeight.w700,color:Colors.black)),
            ], 
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              
              const SizedBox(
                width:20,
              ),
              SizedBox(
                child:Container(
                  height: 100,
                  width: 370,
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 23, 12, 62),
                  border:Border.all(
                    color: Colors.white, 
                    width: 1.0, 
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child:Center(
                  child: Text(allQuestions[currentQuestionIndex]["question"],
                  style:const TextStyle(fontSize:21,
                  fontWeight: FontWeight.w500,color:Colors.white),
                  ),
                ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 50,
            width:350,
            child: ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(0),
              ),
              child:Text("A.${allQuestions[currentQuestionIndex]["options"][0]}",style:const TextStyle(fontSize:20,
              fontWeight:FontWeight.w500,color: Colors.black)),
              onPressed:(){
                if(selectedAnswer==-1){
                  selectedAnswer=0;
                  setState((){});
                }
              }
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height: 50,
            width:350,
            child: ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(1),
              ),
              child:Text("B.${allQuestions[currentQuestionIndex]["options"][1]}",style:const TextStyle(fontSize:20,
              fontWeight:FontWeight.w500,color: Colors.black,)),
              onPressed:(){
                if(selectedAnswer==-1){
                  selectedAnswer=1;
                  setState((){});
                }
              }
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height: 50,
            width:350,
            child: ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(2),
              ),
              child:Text("C.${allQuestions[currentQuestionIndex]["options"][2]}",style:const TextStyle(fontSize:20,
              fontWeight:FontWeight.w500,color: Colors.black)),
              onPressed:(){
                if(selectedAnswer==-1){
                  selectedAnswer=2;
                  setState((){});
                }
              }
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height: 50,
            width:350,
            child: ElevatedButton(
              style:ButtonStyle(
                backgroundColor:checkAnswer(3),
              ),
              child:Text("D.${allQuestions[currentQuestionIndex]["options"][3]}",style:const TextStyle(fontSize:20,
              fontWeight:FontWeight.w500,color: Colors.black,)),
              onPressed:(){
                if(selectedAnswer==-1){
                  selectedAnswer=3;
                  setState((){});
                }
              }
            ),
          ),
          const SizedBox(
            height:20,
          ),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed:(){
          if(selectedAnswer!=-1){
            if (allQuestions[currentQuestionIndex]["correctOption"] == selectedAnswer) {
              totalScore++;}
            if(currentQuestionIndex<allQuestions.length-1){
            currentQuestionIndex++;
            }else{
              questionPage=false;
            }
            selectedAnswer=-1;
            setState((){});
          }
        },
        backgroundColor:Color.fromARGB(255, 23, 12, 62),
        child: const Icon(
          Icons.forward,
          color:Colors.white,
        ),
      ),
    );
  }else{
    return Scaffold(
      appBar:AppBar(
        title:const Text("Quiz Result",style:TextStyle(
          fontSize:25,
          fontWeight: FontWeight.w900,
          color:Colors.white,
        )),
        centerTitle:true,
        backgroundColor:const Color.fromARGB(255, 23, 12, 62),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text("Congratulations",style:TextStyle(fontSize:24,fontWeight:FontWeight.w500,color:Color.fromARGB(255, 10, 128, 14))),
            Image.network("https://static.vecteezy.com/system/resources/previews/032/999/982/non_2x/realistic-golden-trophy-ai-generative-free-png.png",height: 300,),
            const SizedBox(
              height:30
            ),
            Text("Score : $totalScore/${allQuestions.length}",style:const TextStyle(fontSize:20,fontWeight:FontWeight.w500)),
            const SizedBox(
              height:30
            ),
            ElevatedButton(
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 23, 12, 62))
              ),
              onPressed: (){
              setState(() {
                currentQuestionIndex=0;
                selectedAnswer=-1;
                totalScore=0;
                questionPage=true;
              });
            }, child: const Text("Restart",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Colors.white),),
           ),
          ],
        ),
      ),
    );
  }
}
}
