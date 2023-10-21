import 'package:drift/drift.dart';

class AddressEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get wayType => text()();
  TextColumn get wayNumber => text()();
  TextColumn get detail => text()();
  IntColumn get userId => integer()();
}
