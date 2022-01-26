import 'package:flutter/material.dart';
import 'package:common_garbage/tensorflow.dart';
import 'package:common_garbage/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garbage Classifier',
      home: Home(),
    );
  }
}
