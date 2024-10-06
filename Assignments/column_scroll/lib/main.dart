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
          title:const Text("Column Scroll",style:TextStyle(fontWeight:FontWeight.w700,fontSize:23,color:Colors.white)),
          centerTitle:true,
          backgroundColor: const Color.fromARGB(255, 5, 31, 52),
        ),
        body:SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              const SizedBox(height:20),
              Container(
                height:150,
                width:413,
                color:Colors.red
              ),
              const SizedBox(height:20),
              Image.network("https://th.bing.com/th/id/OIP.V5zfZZhnF2epZ7FnbejUxwHaEo?w=272&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              const SizedBox(height:20),
              Container(
                height:150,
                width:413,
                color:const Color.fromARGB(255, 192, 24, 189)
              ),
              const SizedBox(height:20),
              Image.network("https://th.bing.com/th/id/OIP.m88ha6ZtdV0BMH3W5i5YtAHaEo?w=320&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              const SizedBox(height:20),
              Container(
                height:150,
                width:400,
                color:const Color.fromARGB(255, 50, 216, 78)
              ),
              const SizedBox(height:20),
              Image.network("https://th.bing.com/th/id/OIP.LsSFd8nrZTtGoYHGfVLGlAHaEo?w=267&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              const SizedBox(height:20),
              Container(
                height:150,
                width:400,
                color:const Color.fromARGB(255, 98, 19, 183)
              ),
              const SizedBox(height:20),
              Image.network("https://th.bing.com/th/id/OIP.WIPlVI5L7CP66P4IwBIRBwHaEK?w=286&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
              const SizedBox(height:20),
              Container(
                height:150,
                width:400,
                color:const Color.fromARGB(255, 47, 224, 236)
              ),
            ],
          ),
        ),
      ),
    );
  }
}