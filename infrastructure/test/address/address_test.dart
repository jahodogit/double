import 'dart:math';

import 'package:domain/domain.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:infrastructure/src/address/daos/address_dao.dart';
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';

void main() {
  late DoubleVDriftDatabase database;
  late AddressDao addressDao;

  setUp(() {
    database = DoubleVDriftDatabase.withQueryEx(NativeDatabase.memory());
    addressDao = AddressDao(database);
  });
  tearDown(() async {
    await database.close();
  });
  group('Address daos | ', () {
    test('Insert valid address > expect find an address instance', () async {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5 - 55';
      const detail = 'Second floor';
      final userId = Random().nextInt(100);
      final address = Address(wayType: wayType, wayNumber: wayNumber, detail: detail);

      //Act
      await addressDao.insert(address, userId);

      //Assert
      expect(addressDao.getByUserId(userId), emits([isA<Address>()]));
      expect(addressDao.getByUserId(200), emits([]));
    });

    test('Insert two valid address for one user > expect find two address instance', () async {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5 - 55';
      const detail = 'Second floor';

      const wayType2 = 'Avenue';
      const wayNumber2 = '100 - 2';
      const detail2 = 'Apto 3';

      final userId = Random().nextInt(100);
      final address = Address(wayType: wayType, wayNumber: wayNumber, detail: detail);
      final address2 = Address(wayType: wayType2, wayNumber: wayNumber2, detail: detail2);

      //Act
      await addressDao.insert(address, userId);
      await addressDao.insert(address2, userId);

      //Assert
      expect(addressDao.getByUserId(userId), emits([isA<Address>(), isA<Address>()]));
    });
  });
}
