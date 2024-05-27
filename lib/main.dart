import 'package:flutter/material.dart';
import 'package:notification/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NOTIFICATION APP',
      home: Home(),
    );
  }
}
