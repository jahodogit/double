import 'package:domain/src/user/exceptions/invalid_birthday.dart';

class User {
  User({required this.name, required this.lastName, required this.birthday}) {
    _validateBirthday();
  }

  final String name;
  final String lastName;
  final DateTime birthday;

  void _validateBirthday() {
    if (DateTime.now().isBefore(birthday)) throw InvalidBirthdayException();
  }
}
