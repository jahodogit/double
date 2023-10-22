import 'package:infrastructure/infrastructure.dart';
import 'package:infrastructure/src/user/daos/user_dao.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InfrastructureModule {
  UserLocalRepository userLocalRepository(UserDao userDao) => UserLocalRepository(userDao: userDao);
}
