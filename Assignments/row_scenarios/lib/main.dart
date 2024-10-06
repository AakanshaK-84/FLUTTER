import 'package:flutter/material.dart';
import "package:row_scenarios/code1.dart";
import "package:row_scenarios/code2.dart";
import "package:row_scenarios/code3.dart";
import "package:row_scenarios/code4.dart";
import "package:row_scenarios/code5.dart";
import "package:row_scenarios/code6.dart";
import "package:row_scenarios/code7.dart";
import "package:row_scenarios/code8.dart";
import "package:row_scenarios/code9.dart";
void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Code9(),
    );
  }
}
