// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base/app/my_app/bloc/app_bloc.dart' as _i8;
import 'package:base/data/data.dart' as _i7;
import 'package:base/data/src/repository/repository_impl.dart' as _i6;
import 'package:base/data/src/repository/source/api/api_service.dart' as _i4;
import 'package:base/data/src/repository/source/api/client/none_auth_app_server_api_client.dart'
    as _i3;
import 'package:base/domain/domain.dart' as _i9;
import 'package:base/domain/src/repository/repository.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.NoneAuthAppServerApiClient>(
        () => _i3.NoneAuthAppServerApiClient());
    gh.lazySingleton<_i4.ApiService>(
        () => _i4.ApiService(gh<_i3.NoneAuthAppServerApiClient>()));
    gh.lazySingleton<_i5.Repository>(
        () => _i6.RepositoryImpl(gh<_i7.ApiService>()));
    gh.factory<_i8.AppBloc>(() => _i8.AppBloc(gh<_i9.Repository>()));
    return this;
  }
}
