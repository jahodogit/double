import 'package:flutter/material.dart';

void main() {
  runApp(const DoubleVApp());
}

class DoubleVApp extends StatelessWidget {
  const DoubleVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(),
    );
  }
}
