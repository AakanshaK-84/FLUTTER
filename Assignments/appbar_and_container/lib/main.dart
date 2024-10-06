import 'package:appbar_and_container/code1.dart';
import 'package:appbar_and_container/code10.dart';
import 'package:appbar_and_container/code2.dart';
import 'package:appbar_and_container/code3.dart';
import 'package:appbar_and_container/code4.dart';
import 'package:appbar_and_container/code5.dart';
import 'package:appbar_and_container/code6.dart';
import 'package:appbar_and_container/code7.dart';
import 'package:appbar_and_container/code8.dart';
import 'package:appbar_and_container/code9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Code10(),
    );
  }
}
