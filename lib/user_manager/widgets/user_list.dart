import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class UserListWidget extends StatefulWidget {
  const UserListWidget({required this.users, super.key});

  final Stream<List<User>> users;

  @override
  State<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.users,
      builder: (_, snap) {
        if (snap.hasData) {
          return ListView.builder(
            itemCount: snap.data!.length,
            itemBuilder: (_, index) {
              final user = snap.data!.elementAt(index);
              return Text(user.name);
            },
          );
        } else if (snap.hasError) {
          return Text(snap.error.toString());
        }

        return const Text('No se encontraron datos');
      },
    );
  }
}
