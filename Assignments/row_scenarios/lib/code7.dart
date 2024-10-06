import "package:flutter/material.dart";
class Code7 extends StatelessWidget{
  const Code7({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("ROW APP",style:TextStyle(fontWeight: FontWeight.w500,fontSize:23,color:Colors.white)),
          centerTitle:true,
          backgroundColor:const Color.fromARGB(255, 10, 28, 43),
        ),
        body:Container(
          height:MediaQuery.of(context).size.height,
          child:Row(
            crossAxisAlignment:CrossAxisAlignment.end,
            mainAxisAlignment:MainAxisAlignment.start,
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