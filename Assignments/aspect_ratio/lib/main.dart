import "package:flutter/material.dart";
void main(){
  runApp(const AspectRatio());
}
class AspectRatio extends StatefulWidget{
  const AspectRatio({super.key});
  @override
  State createState()=> _AspectRatio();
}
class _AspectRatio extends State{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Aspect Ratio Demo",style:TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color:Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 5, 40, 69),
        ),
        body:Center(
          child:Container(
            height: 300,
            width:300,
            color:Colors.amber,
            child:Image.network("https://images.pexels.com/photos/2651796/pexels-photo-2651796.jpeg?cs=srgb&dl=pexels-zszen-2651796.jpg&fm=jpg",fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}