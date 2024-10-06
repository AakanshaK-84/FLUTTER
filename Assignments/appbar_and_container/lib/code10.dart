import "package:flutter/material.dart";
class Code10 extends StatelessWidget{
  const Code10({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container Corner",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:Center(
          child: Container(
            height:300,
            width: 300,
            decoration:BoxDecoration(
              border: Border.all(width:20),
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              color:Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}