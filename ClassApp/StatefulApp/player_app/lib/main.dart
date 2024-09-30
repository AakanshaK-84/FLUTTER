import "package:flutter/material.dart";
void main(){
  runApp(const PlayerApp());
}
class PlayerApp extends StatefulWidget{
  const PlayerApp({super.key});
  @override
  State createState()=> _PlayerApp();
}
class _PlayerApp extends State{
  int index=0;
  List player=["https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
  "https://staticg.sportskeeda.com/editor/2024/05/d973a-17150616187538-1920.jpg",
  "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/319900/319942.png",
  "https://sm.mashable.com/t/mashable_in/photo/default/img-3224_ngeq.1248.jpg"];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Player App"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
            child:Container(
              height: 200,
              width:200,
              child:Image.network(player[index]),
            ),
           ),
          ],
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if(index>=player.length-1){
              index=0;
            }else{
              index++;
            }
            setState((){});
          },
          backgroundColor: Colors.red,
          child:const Text("Next"),
        ),
      ),
    );
  }
}