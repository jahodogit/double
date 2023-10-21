import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/doublev_logo.jpeg'),
            const SizedBox(height: 40),
            const Text('Somos tu partner,'),
            const Text('para la ejecución de tus proyectos.'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Gestion de usuarios'),
            )
          ],
        ),
      ),
    );
  }
}
