import "package:flutter/material.dart";
class Code9 extends StatelessWidget{
  const Code9({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container Rounded Corner",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:Center(
          child: Container(
            height:300,
            width: 300,
            decoration:BoxDecoration(
              border: Border.all(width:5,color:Colors.red),
              borderRadius:BorderRadius.circular(20),
              color:Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}