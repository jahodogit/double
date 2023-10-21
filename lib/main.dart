import 'package:doublev/home/app_home_page.dart';
import 'package:doublev/shared/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoubleVApp());
}

class DoubleVApp extends StatelessWidget {
  const DoubleVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Users manager',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppHomePage(),
      routes: buildAppRoutes(),
    );
  }
}
