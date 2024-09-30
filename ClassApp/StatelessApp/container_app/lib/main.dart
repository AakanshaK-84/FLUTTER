import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:"ContainerApp",
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ContainerApp"),
          backgroundColor:Colors.blue,
          centerTitle: true,
        ),
        body:Center(
          child:Container(
          height:200,
          width:200,
          color: Colors.amber,
          child: const Text("Container"),
        )
      )
    )
    );
  }
}