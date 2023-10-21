import 'package:domain/src/user/models/user.dart';

abstract class UserRepository {
  Future<int> save(User user);
  Stream<List<User>> getAll();
}
