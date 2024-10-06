import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    print("Device Width : ${MediaQuery.of(context).size.width}");
    print("Device Height : ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container Gradient",style:TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 8, 43, 72),
        ),
        body:Center(
          child:Container(
            height:200,
            width:200,
            alignment: Alignment.bottomLeft,
            decoration:const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,end:Alignment.bottomCenter,
              colors:[
                Colors.black,
                Colors.red,
              ]
              )
            ),
            child:const Text("Hello ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w700),)
          ),
        ),
      ),
    );
  }
}