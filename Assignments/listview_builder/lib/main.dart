import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ListView Builder",style:TextStyle(fontSize:23,fontWeight:FontWeight.w500,color:Colors.white)),
          centerTitle:true,
          backgroundColor:const Color.fromARGB(255, 9, 30, 48),
        ),
        body:ListView.builder(
          itemCount: 25,
          itemBuilder:(BuildContext context, int index){
            return Text(
              "Index : $index",
              style:const TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ),
    );
  }
}