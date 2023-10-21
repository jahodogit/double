import 'package:domain/domain.dart';
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';

class AddresTraslator {
  Address fromEntityToDomain(AddressEntityData entity) => Address(wayType: entity.wayType, wayNumber: entity.wayNumber, detail: entity.detail);

  AddressEntityCompanion fromDomainToEntity(Address address, int userId) =>
      AddressEntityCompanion.insert(wayType: address.wayType, wayNumber: address.wayNumber, detail: address.detail, userId: userId);
}
