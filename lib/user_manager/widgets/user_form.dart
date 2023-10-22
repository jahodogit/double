import 'package:flutter/material.dart';

class UserFormPage extends StatefulWidget {
  const UserFormPage({super.key});

  static const route = 'user_form_page';

  @override
  State<UserFormPage> createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuevo usuario')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Informacion personal',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              decoration: const InputDecoration(label: Text('Nombre'), icon: Icon(Icons.person)),
            ),
            const SizedBox(height: 25),
            TextFormField(
              decoration: const InputDecoration(label: Text('Apellidos'), icon: Icon(Icons.details)),
            ),
            const SizedBox(height: 25),
            TextFormField(
              decoration: const InputDecoration(label: Text('Fecha de nacimiento'), icon: Icon(Icons.calendar_month)),
            ),
            const SizedBox(height: 50),
            ElevatedButton(onPressed: () {}, child: const Text('Siguiente')),
          ],
        ),
      ),
    );
  }
}
