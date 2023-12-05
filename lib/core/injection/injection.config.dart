// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:playground_news/core/env/env.dart' as _i4;
import 'package:playground_news/core/routes/app_router.dart' as _i3;
import 'package:playground_news/core/utils/register_module.dart' as _i13;
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart'
    as _i5;
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart'
    as _i11;
import 'package:playground_news/pixel_news/infrastructure/core/api_helper.dart'
    as _i9;
import 'package:playground_news/pixel_news/infrastructure/explore/mock/mock_explore_repository.dart'
    as _i6;
import 'package:playground_news/pixel_news/infrastructure/home/data_sources/home_data_sources.dart'
    as _i10;
import 'package:playground_news/pixel_news/infrastructure/home/repository/home_repository.dart'
    as _i12;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(registerModule.appRouter);
    gh.factory<_i4.Env>(() => _i4.Env());
    gh.lazySingleton<_i5.IExploreRepository>(() => _i6.MockExploreRepository());
    gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
    gh.factory<_i8.Dio>(() => registerModule.dio(gh<_i4.Env>()));
    gh.lazySingleton<_i9.ApiHelper>(() => _i9.ApiHelper(gh<_i8.Dio>()));
    gh.factory<_i10.HomeDataSources>(
        () => _i10.HomeDataSources(gh<_i9.ApiHelper>()));
    gh.lazySingleton<_i11.IHomeRepository>(
        () => _i12.HomeRepository(gh<_i10.HomeDataSources>()));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
