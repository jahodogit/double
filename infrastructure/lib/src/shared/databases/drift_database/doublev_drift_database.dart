import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:infrastructure/src/address/entities/address_entity.dart';
import 'package:infrastructure/src/user/entities/user_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

part 'doublev_drift_database.g.dart';

@injectable
@DriftDatabase(tables: [UserEntity, AddressEntity])
class DoubleVDriftDatabase extends _$DoubleVDriftDatabase {
  DoubleVDriftDatabase() : super(_openConnection());

  DoubleVDriftDatabase.withQueryEx(super.queryExecutor);

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
