import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("COLUMN APP",style:TextStyle(fontWeight:FontWeight.bold,fontSize:23)),
          centerTitle: true,
          backgroundColor:Colors.blue,
        ),
        body:Container(
          width:MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment:Alignment.center,
                height: 100,
                width: 140,
                color: Color.fromARGB(255, 233, 67, 67),
                child:const Text("Hello",style:TextStyle(fontWeight:FontWeight.w500,fontSize:20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}