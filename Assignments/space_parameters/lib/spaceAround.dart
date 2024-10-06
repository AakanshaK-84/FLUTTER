import "package:flutter/material.dart";
class SpaceAround extends StatelessWidget{
  const SpaceAround({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("SPACE AROUND",style:TextStyle(fontWeight:FontWeight.w600,fontSize:20,color:Colors.white)),
          centerTitle:true,
          backgroundColor: const Color.fromARGB(255, 8, 31, 50),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Container(
              height:150,
              width:150,
              color:const Color.fromARGB(255, 41, 222, 56),
            ),
            Container(
              height:150,
              width:150,
              color:const Color.fromARGB(255, 201, 36, 88),
            ),
          ],
        ),
      ),
    );
  }
}