import "package:flutter/material.dart";
void main(){
  runApp(const ContainerColor());
}
class ContainerColor extends StatefulWidget{
  const ContainerColor({super.key});
  State createState()=> _ContainerColorState();
}
class _ContainerColorState extends State{
  bool changeColor=true;
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ContainerColorApp"),
          centerTitle:true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:Container(
            height: 150,
            width:200,
            color:changeColor ?Colors.red:Colors.amber,
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if(changeColor==true){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState((){});
          },
          child:const Text("change"),
        ),
      ),
    );
  }
}