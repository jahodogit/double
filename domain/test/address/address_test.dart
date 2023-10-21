import 'package:domain/src/address/exceptions/invalid_way_number.dart';
import 'package:domain/src/address/models/address.dart';
import 'package:test/test.dart';

void main() {
  group('Address model | ', () {
    test('Create address with way number with letter instead middle dash > expect InvalidWayNumberException', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5 a 28';
      const detail = 'Second floor';

      //Act - Assert
      expect(() => Address(wayType: wayType, wayNumber: wayNumber, detail: detail), throwsA(isA<InvalidWayNumberException>()));
    });

    test('Create address with space instead middle dash > expect InvalidWayNumberException', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5 28';
      const detail = 'Second floor';

      //Act - Assert
      expect(() => Address(wayType: wayType, wayNumber: wayNumber, detail: detail), throwsA(isA<InvalidWayNumberException>()));
    });

    test('Create address without spaces around middle dash > expect InvalidWayNumberException', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5-28';
      const detail = 'Second floor';

      //Act - Assert
      expect(() => Address(wayType: wayType, wayNumber: wayNumber, detail: detail), throwsA(isA<InvalidWayNumberException>()));
    });

    test('Create address with invalid format > expect InvalidWayNumberException', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '528';
      const detail = 'Second floor';

      //Act - Assert
      expect(() => Address(wayType: wayType, wayNumber: wayNumber, detail: detail), throwsA(isA<InvalidWayNumberException>()));
    });

    test('Create address with letters > expect InvalidWayNumberException', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = 'a b c';
      const detail = 'Second floor';

      //Act - Assert
      expect(() => Address(wayType: wayType, wayNumber: wayNumber, detail: detail), throwsA(isA<InvalidWayNumberException>()));
    });

    test('Create address with valid format > expect Address instance', () {
      //Arrange
      const wayType = 'Avenue';
      const wayNumber = '5 - 55';
      const detail = 'Second floor';

      //Act - Assert
      expect(Address(wayType: wayType, wayNumber: wayNumber, detail: detail), isA<Address>());
    });
  });
}
