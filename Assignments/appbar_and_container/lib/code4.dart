import 'package:flutter/material.dart';

class Code4 extends StatelessWidget {
  const Code4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Containers",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height:150,
                width:200,
                color:Colors.red,
              ),
              Container(
                height:150,
                width:200,
                color:const Color.fromARGB(255, 134, 20, 136),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
