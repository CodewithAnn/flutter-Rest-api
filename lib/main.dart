import 'package:flutter/material.dart';
import 'package:flutter_rest_api/example_three.dart';
import 'package:flutter_rest_api/example_two.dart';
import 'package:flutter_rest_api/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleThree(),
    );
  }
}
