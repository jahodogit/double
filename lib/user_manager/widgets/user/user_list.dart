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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StreamBuilder(
        stream: widget.users,
        builder: (_, snap) {
          if (snap.hasData) {
            return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (_, index) {
                final user = snap.data!.elementAt(index);
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text('${user.name} ${user.lastName}'),
                          subtitle: Text(user.birthday.toString()),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Icon(Icons.navigate_next_outlined),
                      )
                    ],
                  ),
                );
              },
            );
          } else if (snap.hasError) {
            return Text(snap.error.toString());
          }

          return const Text('No se encontraron datos');
        },
      ),
    );
  }
}
