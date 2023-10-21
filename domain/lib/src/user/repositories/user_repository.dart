import 'package:domain/src/user/models/user.dart';

abstract class UserRepository {
  Future<void> save(User user);
  Stream<List<User>> getAll();
}
