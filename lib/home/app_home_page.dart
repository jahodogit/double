import 'package:doublev/user_manager/user_manager_home.dart';
import 'package:flutter/material.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  static const route = 'app_home';

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
              onPressed: () => Navigator.of(context).pushNamed(UserManagerHomePage.route),
              child: const Text('Gestion de usuarios'),
            ),
          ],
        ),
      ),
    );
  }
}
