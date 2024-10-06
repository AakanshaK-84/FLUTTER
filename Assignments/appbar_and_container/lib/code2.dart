import 'package:flutter/material.dart';

class Code2 extends StatelessWidget {
  const Code2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("AppBar",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
          actions:[
            IconButton(onPressed: (){}, 
            icon: const Icon(Icons.settings),color:Colors.grey)
          ],
        ),
      ),
    );
  }
}
