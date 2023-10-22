import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class UserCardWidget extends StatefulWidget {
  const UserCardWidget({required this.user, super.key});

  final User user;

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurpleAccent,
      child: SizedBox(
        width: double.infinity,
        child: ListTile(
          title: Text('${widget.user.name} ${widget.user.lastName}'),
          subtitle: Text(widget.user.birthday.toString()),
        ),
      ),
    );
  }
}
