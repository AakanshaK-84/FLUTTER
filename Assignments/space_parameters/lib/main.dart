import "package:flutter/material.dart";
import "package:space_parameters/spaceAround.dart";
import "package:space_parameters/spaceBetween.dart";
import "package:space_parameters/spaceEvenly.dart";
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SpaceBetween(),
    );
  }
}