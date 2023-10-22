import 'package:domain/domain.dart';
import 'package:infrastructure/src/user/daos/user_dao.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserLocalRepository implements UserRepository {
  UserLocalRepository({required this.userDao});

  final UserDao userDao;
  @override
  Stream<List<User>> getAll() => userDao.getAll();

  @override
  Future<int> save(User user) => userDao.insert(user);
}
