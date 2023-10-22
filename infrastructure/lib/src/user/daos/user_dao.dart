import 'package:domain/domain.dart';
import 'package:drift/drift.dart';
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';
import 'package:infrastructure/src/user/entities/user_entity.dart';
import 'package:infrastructure/src/user/traslators/user_translator.dart';
import 'package:injectable/injectable.dart';

part 'user_dao.g.dart';

@injectable
@DriftAccessor(tables: [UserEntity])
class UserDao extends DatabaseAccessor<DoubleVDriftDatabase> with _$UserDaoMixin {
  UserDao(super.attachedDatabase);

  Future<int> insert(User user) async => attachedDatabase.into(attachedDatabase.userEntity).insert(UserTraslator().fromDomainToEntity(user));

  Stream<List<User>> getAll() {
    return select(attachedDatabase.userEntity).asyncMap((data) => UserTraslator().fromEntityToDomain(data)).watch();
  }
}
