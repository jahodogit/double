import 'package:infrastructure/infrastructure.dart';
import 'package:infrastructure/src/address/daos/address_dao.dart';
import 'package:infrastructure/src/user/daos/user_dao.dart';
import 'package:injectable/injectable.dart';

/// This module expose repositories to getit on the presentation layer

@module
abstract class InfrastructureModule {
  UserLocalRepository userLocalRepository(UserDao userDao) => UserLocalRepository(userDao: userDao);
  AddressLocalRepository addressLocalRepository(AddressDao userDao) => AddressLocalRepository(addressDao: userDao);
}
