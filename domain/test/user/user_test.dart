import 'package:domain/src/user/exceptions/invalid_birthday.dart';
import 'package:domain/src/user/models/user.dart';
import 'package:test/test.dart';

void main() {
  group('User feature | ', () {
    test('Create user with brithday greater than system date > expect InvalidBirthdayException', () {
      //Arrange
      const name = 'Jaime';
      const lastName = 'Hoyos';
      final birthday = DateTime.now().add(const Duration(days: 90));

      //Act-Assert
      expect(() => User(name: name, lastName: lastName, birthday: birthday), throwsA(isA<InvalidBirthdayException>()));
    });

    test('Create user with brithday smaller than system date > expect User instance', () {
      //Arrange
      const name = 'Jaime';
      const lastName = 'Hoyos';
      final birthday = DateTime.now().add(const Duration(days: -90));

      //Act-Assert
      expect(User(name: name, lastName: lastName, birthday: birthday), isA<User>());
    });
  });
}
