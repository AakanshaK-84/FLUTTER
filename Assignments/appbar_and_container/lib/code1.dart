import 'package:flutter/material.dart';

class Code1 extends StatelessWidget {
  const Code1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("AppBar",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
          actions:[
            IconButton(onPressed: (){}, 
            icon: const Icon(Icons.shopping_bag),color:Colors.white),
            IconButton(onPressed: (){}, 
            icon: const Icon(Icons.settings),color:Colors.grey),
          ],
        ),
      ),
    );
  }
}
