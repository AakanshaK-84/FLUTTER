import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? myName;
  List<String> playerList = [];
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ListView Player List",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 6, 15, 45),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                obscureText: false,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Enter text",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String val) {
                  print("Value: $val");
                },
                onEditingComplete: () {
                  print("Editing Completed");
                },
                onSubmitted: (value) {
                  print("Value Submitted: $value");
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Add Data");
                myName = nameController.text.trim();
                print("My Name: $myName");
                if (myName != '') {
                  playerList.add(myName!);
                  nameController.clear();
                  setState(() {});
                }
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: playerList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Name: ${playerList[index]}",
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
