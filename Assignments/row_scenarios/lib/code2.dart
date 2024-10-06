import "package:flutter/material.dart";
class Code2 extends StatelessWidget{
  const Code2({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ROW APP",style:TextStyle(fontWeight:FontWeight.bold,fontSize:30,color:Colors.white)),
          centerTitle:true,
          backgroundColor:const Color.fromARGB(255, 10, 28, 43),
        ),
        body:Container(
          child:Row(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height:150,
                width:150,
                color:const Color.fromARGB(255, 218, 28, 104),
              ),
            ],
          ),
        ),
      ),
    );
  }
}