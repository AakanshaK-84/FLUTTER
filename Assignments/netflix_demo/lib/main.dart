import "package:flutter/material.dart";
void main(){
  runApp(const NetFlix());
}
class NetFlix extends StatelessWidget{
  const NetFlix({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("NetFlix Demo",style:TextStyle(fontSize:23,fontWeight:FontWeight.w500,color:Color.fromARGB(255, 197, 27, 27))),
          centerTitle:true,
          backgroundColor:Colors.black,
        ),
        body:ListView.builder(
          itemCount:10,
          itemBuilder:(BuildContext context, int index){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                const Text("Action Movies",style:TextStyle(fontSize:25,fontWeight:FontWeight.w500)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:[
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLlGvoVAiA1ALSKfDtZZmN4SrFZi56aNnoBw&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpm6rO4V7gPdCw1beVx3MpH9RPA_fNVDdvpw&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNIyTAXTOEA_YLmAHQPnrejd7iMgI3Wxottw&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxCXB9fwQDYZpD0To2v07pvDnZfP1EikQKrw&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPY1k2F0vWd4EFUj9w3n9KiQH-HomNAl2j0Q&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8i5Hq10FdnVtyTrKkKFhXAuL-Ue1t01A5AQ&s"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height:300,
                        width:160,
                        child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHj4NSF7ga7b2BJHE_Tjgn5qdqCZsEYFCcCA&s"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}