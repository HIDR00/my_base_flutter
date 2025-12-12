// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:base/app/my_app/bloc/app_bloc.dart' as _i9;
import 'package:base/app/navigation/routers/app_router.dart' as _i3;
import 'package:base/app/ui/home/bloc/home_bloc.dart' as _i11;
import 'package:base/data/data.dart' as _i8;
import 'package:base/data/src/repository/repository_impl.dart' as _i7;
import 'package:base/data/src/repository/source/api/api_service.dart' as _i5;
import 'package:base/data/src/repository/source/api/client/none_auth_app_server_api_client.dart'
    as _i4;
import 'package:base/domain/domain.dart' as _i10;
import 'package:base/domain/src/repository/repository.dart' as _i6;
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
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.lazySingleton<_i4.NoneAuthAppServerApiClient>(
        () => _i4.NoneAuthAppServerApiClient());
    gh.lazySingleton<_i5.ApiService>(
        () => _i5.ApiService(gh<_i4.NoneAuthAppServerApiClient>()));
    gh.lazySingleton<_i6.Repository>(
        () => _i7.RepositoryImpl(gh<_i8.ApiService>()));
    gh.factory<_i9.AppBloc>(() => _i9.AppBloc(gh<_i10.Repository>()));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(gh<_i10.Repository>()));
    return this;
  }
}
