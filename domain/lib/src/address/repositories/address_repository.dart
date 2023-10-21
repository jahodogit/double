import 'package:domain/src/address/models/address.dart';

abstract class AddressRepository {
  Future<void> save(Address address, int userId);
  Stream<List<Address>> getByUserId(int userId);
}
