import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 450, 
                width: 7,   
                color: Color.fromARGB(182, 40, 37, 37), 
              ),        
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const SizedBox(
                    height: 95,
                  ),
                  Container(
                    height: 40,
                    width: 175,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 40,
                    width: 175,
                    color: Colors.white,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmyugysxdAWf3W_kNbqnc6YLWQkQpJOYy6g&s"),
                  ),
                  Container(
                    height: 40,
                    width: 175,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
