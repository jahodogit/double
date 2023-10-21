import 'package:domain/domain.dart';
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';

class UserTraslator {
  User fromEntityToDomain(UserEntityData entity) => User(name: entity.name, lastName: entity.lastName, birthday: entity.birthday);

  UserEntityCompanion fromDomainToEntity(User user) => UserEntityCompanion.insert(name: user.name, lastName: user.lastName, birthday: user.birthday);
}
