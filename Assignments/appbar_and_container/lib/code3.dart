import 'package:flutter/material.dart';

class Code3 extends StatelessWidget {
  const Code3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Hello Core2Web",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Color.fromARGB(255, 58, 10, 67))),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 33, 188, 191),
        ),
        body:Center(
          child:Container(
            height:200,
            width:360,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
