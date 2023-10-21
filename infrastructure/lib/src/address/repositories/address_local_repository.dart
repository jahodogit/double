import 'package:domain/domain.dart';
import 'package:infrastructure/src/address/daos/address_dao.dart';

class AddressLocalRepository implements AddressRepository {
  AddressLocalRepository({required this.addressDao});

  final AddressDao addressDao;
  @override
  Stream<List<Address>> getByUserId(int userId) => addressDao.getByUserId(userId);

  @override
  Future<void> save(Address address, int userId) async => addressDao.insert(address, userId);
}
