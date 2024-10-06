import 'package:flutter/material.dart';

class Code6 extends StatelessWidget {
  const Code6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Colorful Containers",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:SingleChildScrollView(
          child: Center(
            child:Column(
              children:[
                Container(
                  height:150,
                  width:150,
                  color:Colors.red
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.blue
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.green,
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.yellow,
                ),
                Container(
                  height:150,
                  width:150,
                  color:const Color.fromARGB(255, 4, 29, 49),
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.pink,
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.grey
                ),
                Container(
                  height:150,
                  width:150,
                  color:const Color.fromARGB(255, 13, 173, 176)
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.black,
                ),
                Container(
                  height:150,
                  width:150,
                  color:const Color.fromARGB(255, 134, 8, 148)
                ),
                Container(
                  height:150,
                  width:150,
                  color:Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
