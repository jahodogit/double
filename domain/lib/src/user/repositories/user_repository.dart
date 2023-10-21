import 'package:domain/src/user/models/user.dart';

abstract class UserRepository {
  Future<void> save(User user);
  Future<User> get(String fullName);
  Stream<List<User>> getAll();
}
