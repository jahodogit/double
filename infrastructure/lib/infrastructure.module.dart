//@GeneratedMicroModule;InfrastructurePackageModule;package:infrastructure/infrastructure.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:domain/domain.dart' as _i6;
import 'package:infrastructure/infrastructure.dart' as _i5;
import 'package:infrastructure/module.dart' as _i10;
import 'package:infrastructure/src/address/daos/address_dao.dart' as _i8;
import 'package:infrastructure/src/address/repositories/address_local_repository.dart'
    as _i9;
import 'package:infrastructure/src/shared/databases/drift_database/doublev_drift_database.dart'
    as _i3;
import 'package:infrastructure/src/user/daos/user_dao.dart' as _i4;
import 'package:infrastructure/src/user/repositories/user_local_repository.dart'
    as _i7;
import 'package:injectable/injectable.dart' as _i1;

class InfrastructurePackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    final infrastructureModule = _$InfrastructureModule();
    gh.singleton<_i3.DoubleVDriftDatabase>(_i3.DoubleVDriftDatabase());
    gh.factory<_i4.UserDao>(() => _i4.UserDao(gh<_i3.DoubleVDriftDatabase>()));
    gh.factory<_i5.UserLocalRepository>(
        () => infrastructureModule.userLocalRepository(gh<_i4.UserDao>()));
    gh.factory<_i6.UserRepository>(
        () => _i7.UserLocalRepository(userDao: gh<_i4.UserDao>()));
    gh.factory<_i8.AddressDao>(
        () => _i8.AddressDao(gh<_i3.DoubleVDriftDatabase>()));
    gh.factory<_i5.AddressLocalRepository>(() =>
        infrastructureModule.addressLocalRepository(gh<_i8.AddressDao>()));
    gh.factory<_i6.AddressRepository>(
        () => _i9.AddressLocalRepository(addressDao: gh<_i8.AddressDao>()));
  }
}

class _$InfrastructureModule extends _i10.InfrastructureModule {}
