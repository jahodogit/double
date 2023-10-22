import 'package:domain/domain.dart';
import 'package:drift/drift.dart';
import 'package:infrastructure/src/address/entities/address_entity.dart';
import 'package:infrastructure/src/address/traslators/address_traslator.dart';
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart';
import 'package:injectable/injectable.dart';

part 'address_dao.g.dart';

@injectable
@DriftAccessor(tables: [AddressEntity])
class AddressDao extends DatabaseAccessor<DoubleVDriftDatabase> with _$AddressDaoMixin {
  AddressDao(super.attachedDatabase);

  Future<void> insert(Address address, int userId) async =>
      attachedDatabase.into(attachedDatabase.addressEntity).insert(AddresTraslator().fromDomainToEntity(address, userId));

  Stream<List<Address>> getByUserId(int userId) {
    return (select(attachedDatabase.addressEntity)..where((data) => (data.userId).equals(userId)))
        .asyncMap((data) => AddresTraslator().fromEntityToDomain(data))
        .watch();
  }
}
