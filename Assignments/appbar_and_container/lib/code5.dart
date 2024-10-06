import 'package:flutter/material.dart';

class Code5 extends StatelessWidget {
  const Code5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Images",style:TextStyle(fontSize:23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 24, 37),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height:150,
                width:150,
                child:Image.network("https://images.news18.com/ibnlive/uploads/2022/06/airforce-16560537364x3.jpg"),
              ),
              Container(
                height:150,
                width:150,
                child:Image.network("https://vishwabharatigurukul.com/wp-content/uploads/2021/05/Indian-Navy-Officer-1.png"),
              ),
              Container(
                height:150,
                width:150,
                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWHCey02ubJz4fmGYMVb8otbhLyq0WIhnp6w&s"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
