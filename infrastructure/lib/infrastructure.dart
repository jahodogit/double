/// Infrastructure library
library;

import 'package:injectable/injectable.dart';

export 'src/address/repositories/address_local_repository.dart' show AddressLocalRepository;
export 'src/user/repositories/user_local_repository.dart' show UserLocalRepository;

@InjectableInit.microPackage()
void initInfrastructure() {}
