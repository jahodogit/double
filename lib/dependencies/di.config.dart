// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:doublev/user_manager/bloc/user_home_cubit.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:infrastructure/infrastructure.dart' as _i4;
import 'package:infrastructure/infrastructure.module.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.UserHomeCubit>(
        () => _i3.UserHomeCubit(gh<_i4.UserLocalRepository>()));
    await _i5.InfrastructurePackageModule().init(gh);
    return this;
  }
}
