import 'package:domain/domain.dart';
import 'package:doublev/user_manager/widgets/address/address_form.dart';
import 'package:flutter/material.dart';

class UserFormPage extends StatefulWidget {
  const UserFormPage({super.key});

  static const route = 'user_form_page';

  @override
  State<UserFormPage> createState() => _UserFormPageState();
}

class _UserFormPageState extends State<UserFormPage> {
  late String name;
  late String lastName;
  late DateTime birthday;

  final birthdayController = TextEditingController();
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
              onChanged: (value) => name = value,
              decoration: const InputDecoration(label: Text('Nombre'), icon: Icon(Icons.person)),
            ),
            const SizedBox(height: 25),
            TextFormField(
              onChanged: (value) => lastName = value,
              decoration: const InputDecoration(label: Text('Apellidos'), icon: Icon(Icons.details)),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: birthdayController,
              onTap: () => _selectDate(context),
              decoration: const InputDecoration(label: Text('Fecha de nacimiento'), icon: Icon(Icons.calendar_month)),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                try {
                  final user = User(name: name, lastName: lastName, birthday: birthday);

                  Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (BuildContext context) => AddressFormPage(user: user)),
                  );
                } catch (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error.toString()),
                    ),
                  );
                }
              },
              child: const Text('Siguiente'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2015), lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        birthday = picked;
        birthdayController.text = birthday.toString();
      });
    }
  }
}
