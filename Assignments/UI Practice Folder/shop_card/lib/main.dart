import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState()=> _MyApp();
}
class _MyApp extends State{
  int count=1;
  @override
  Widget build(BuildContext build){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Shoes",style:TextStyle(color:Color.fromARGB(255, 60, 46, 222),fontSize:18,fontWeight:FontWeight.w500)),
          actions: [
            IconButton(onPressed: ((){}), icon: Icon(Icons.shopping_cart),color:Color.fromARGB(255, 109, 44, 248)),
          ],
        ),
        body:Column(
          children:[
            Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg"),
            const SizedBox(
              height:20,
            ),
            Row(
              children: [
                const SizedBox(
                  width:10,
                ),
                Container(
                  child:const Text("Nike Air Force 1 ''07",style:TextStyle(fontWeight:FontWeight.w700,fontSize:22),)
                ),
              ],
            ),
            const SizedBox(
                  height:20,
                ),
            Row(
              children: [
                const SizedBox(
                  width:10,
                ),
                ElevatedButton(onPressed: (){
                }, 
                child: const Text("SHOES",style:TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.w500)),
                style:const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 109, 44, 248)),
                ),
                ),
                const SizedBox(
                  width:10,
                ),
                ElevatedButton(onPressed: (){
                }, 
                style:const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 109, 44, 248)),
                ),
                child: const Text("FOOTWEAR",
                style:TextStyle(color:Colors.white,
                fontSize:15,
                fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            const SizedBox(
                  height:20,
                ),
            Row(
              children:[
                const SizedBox(
                  width:10,
                ),
                Container(
                  height:110,
                  width:400,
                  child:const Text("With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather,era-echoing'80s constructive and refelective-design Swoosh logos.",style:TextStyle(fontSize:15))
                ),
              ],
            ),
            const SizedBox(
              height:20,
            ),
            Row(
              children:[
                 const SizedBox(
              width:10,
              ),
              Text("Quantity ",style:TextStyle(fontWeight: FontWeight.w500)),
              IconButton(onPressed: (){
                count--;
                setState(() {
                });
              }, 
              icon: const Icon(Icons.remove)
              ),
              const SizedBox(
              width:10,
              ),
              Container(
                height:37,
                width:35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:Colors.white,
                  border:Border.all(width:1,style: BorderStyle.solid),
                  borderRadius:BorderRadius.circular(5),
                ),
                child:Text("$count",),
              ),
              const SizedBox(
              width:10,
              ),
              IconButton(onPressed: (){
                count++;
                setState((){});
              }, 
              icon: const Icon(Icons.add)
              ),  
              ],
            ),
            const SizedBox(
              height:20,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  // const SizedBox(
                  //   width:80,
                  // ),
                  Container(
                    width:380,
                    height: 45,
                    child: ElevatedButton(onPressed: (){}, 
                    child: const Text("  PURCHASE  ",style:TextStyle(color:Colors.white,fontSize:21,fontWeight: FontWeight.w500)),
                    style:const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 109, 44, 248)),
                                    ), 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}