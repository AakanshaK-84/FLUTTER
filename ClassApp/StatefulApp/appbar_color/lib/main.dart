import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState()=> _MyApp();
}
class _MyApp extends State{
  bool changeColor=true;
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("AppBar_Color"),
          centerTitle:true,
          backgroundColor: changeColor ?Colors.blue: Colors.amber,
        ),
        body:Center(
          child: Container(
            height: 200,
            width:200,
            color: changeColor ? Colors.red: Colors.black,
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if(changeColor==true){
              changeColor=false;
            }
            else{
              changeColor=true;
            }
            setState(() {});
          },
          backgroundColor: Color.fromARGB(255, 148, 46, 232),
          child: Text("Next"),
        ),
      ),
    );
  }
}