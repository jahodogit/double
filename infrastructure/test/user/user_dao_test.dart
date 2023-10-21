import 'package:domain/domain.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';
import 'package:infrastructure/src/user/daos/user_dao.dart';

void main() {
  late DoubleVDriftDatabase database;
  late UserDao userDao;

  setUp(() {
    database = DoubleVDriftDatabase.withQueryEx(NativeDatabase.memory());
    userDao = UserDao(database);
  });
  tearDown(() async {
    await database.close();
  });
  group('User dao | ', () {
    test('Insert valid user > expect userId int response', () async {
      //Arrange
      const name = 'Jaime';
      const lastName = 'Hoyos';
      final birthday = DateTime(1985, 10, 04);
      final user = User(name: name, lastName: lastName, birthday: birthday);

      //Act - Assert
      expect(await userDao.insert(user), isA<int>());
    });
  });
}
