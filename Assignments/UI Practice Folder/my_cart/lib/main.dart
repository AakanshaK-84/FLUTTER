import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State createState()=>_MyApp();
}
class _MyApp extends State{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:const Text("My cart",style:TextStyle(color:Color.fromARGB(255, 109, 44, 248),fontWeight: FontWeight.w700,fontSize: 23),),
          centerTitle:true,
        ),
        body:Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children:[
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color:const Color.fromARGB(255, 243, 240, 240)),
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(223, 236, 235, 235),
                ),
                child:Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height:118,
                        width:120,
                        clipBehavior: Clip.antiAlias,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/Shoes.jpg"),
                      ),
                    ),
                    const SizedBox(
                      width:10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Nike Shoes",style:TextStyle(fontWeight: FontWeight.w500,fontSize:22,)),
                        const SizedBox(
                          width:10,
                        ),
                        Container(
                          height:40,
                          width:250,
                          child: const Text("With iconic style and legendary comfort, no repeat",style:TextStyle(color:Color.fromARGB(255, 77, 75, 75),fontWeight: FontWeight.w400)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            const Text("\$570.00",style:TextStyle(fontSize: 21,fontWeight:FontWeight.w600)),
                            const SizedBox(
                              width:20,
                            ),
                            Row(
                              children: [
                                IconButton(onPressed:(){},
                            icon: const Icon(Icons.remove),),
                            Container(
                              alignment: Alignment.center,
                              height:25,
                              width:37,
                              decoration:BoxDecoration(
                                border:Border.all(color:const Color.fromARGB(255, 109, 44, 248)),
                                borderRadius:BorderRadius.circular(3),
                               ),
                               child:const Text("1"),
                            ),
                            IconButton(onPressed:(){},
                            icon: const Icon(Icons.add),
                            ),
                            ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:BoxDecoration(
                  border: Border.all(color:const Color.fromARGB(255, 243, 240, 240)),
                  borderRadius: BorderRadius.circular(10),
                  color:const Color.fromARGB(223, 236, 235, 235),
                ),
                child:Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height:118,
                        width:120,
                        clipBehavior: Clip.antiAlias,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset("assets/Shoes.jpg"),
                      ),
                    ),
                    const SizedBox(
                      width:10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Nike Shoes",style:TextStyle(fontWeight: FontWeight.w500,fontSize:22,)),
                        const SizedBox(
                          width:10,
                        ),
                        Container(
                          height:40,
                          width:250,
                          child: const Text("With iconic style and legendary comfort, no repeat",style:TextStyle(color:Color.fromARGB(255, 77, 75, 75),fontWeight: FontWeight.w400)),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            const Text("\$77.00",style:TextStyle(fontSize: 21,fontWeight:FontWeight.w600)),
                            const SizedBox(
                              width:35,
                            ),
                            Row(
                              children: [
                                IconButton(onPressed:(){},
                            icon: const Icon(Icons.remove),),
                            Container(
                              alignment: Alignment.center,
                              height:25,
                              width:37,
                              decoration:BoxDecoration(
                                border:Border.all(color:const Color.fromARGB(255, 109, 44, 248)),
                                borderRadius:BorderRadius.circular(3),
                               ),
                               child:const Text("1"),
                            ),
                            IconButton(onPressed:(){},
                            icon: const Icon(Icons.add),
                            ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height:130,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Subtotal:",style:TextStyle(fontSize:16,fontWeight: FontWeight.w400,color:Color.fromARGB(255, 85, 83, 83))),
                    Text("\$800.00",style:TextStyle(fontSize:18,fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              const SizedBox(
                height:15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Delivery Fee:",style:TextStyle(fontSize:16,fontWeight: FontWeight.w400,color:Color.fromARGB(255, 85, 83, 83))),
                    Text("\$5.00",style:TextStyle(fontSize:18,fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              const SizedBox(
                height:15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text("Discount:",style:TextStyle(fontSize:16,fontWeight: FontWeight.w400,color:Color.fromARGB(255, 85, 83, 83))),
                    Text("40%",style:TextStyle(fontSize:18,fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              const SizedBox(
                height:13,
              ),
              Container(
                width:360,
                height: 54,
                child: ElevatedButton(onPressed: (){},
                style:const ButtonStyle(
                  backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 109, 44, 248)),
                ),
                child: const Text("Checkout for ₹480.00",style:TextStyle(fontSize:16,fontWeight: FontWeight.w500,color:Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}