import 'package:flutter/material.dart';

class Code7 extends StatelessWidget {
  const Code7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Images Horizontal Scroll",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child:Row(
              children:[
                Container(
                  height:300,
                  width:150,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKFu_6ZGOMDNs6PaWcGaNox-rKzBGYpoO7cA&s")
                ),
                Container(
                  height:300,
                  width:150,
                  child:Image.network("https://vishwabharatigurukul.com/wp-content/uploads/2021/05/Indian-Navy-Officer-1.png")
                ),
                Container(
                  height:300,
                  width:150,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk0wjrGFOi4PinNnbMyql9iWM2xZjKxKFbPQ&s")
                ),
                Container(
                  height:300,
                  width:150,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4ueFx4phHWv0fSLPUmTYRzCkKxVVNtxXspw&s")
                ),
                Container(
                  height:300,
                  width:150,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzN241vwX7vmROAYwi25DFBR2cRXYV69DEUA&s")
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
