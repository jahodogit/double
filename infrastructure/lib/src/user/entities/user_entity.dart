import 'package:drift/drift.dart';

class UserEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get lastName => text()();
  DateTimeColumn get birthday => dateTime()();
}
