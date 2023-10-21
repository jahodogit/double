import 'package:domain/src/address/models/address.dart';

abstract class AddressRepository {
  Future<void> save(Address address);
  Future<List<Address>> getByUserId(int userId);
}
