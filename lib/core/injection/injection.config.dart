// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:playground_news/core/env/env.dart' as _i4;
import 'package:playground_news/core/routes/app_router.dart' as _i3;
import 'package:playground_news/core/utils/register_module.dart' as _i17;
import 'package:playground_news/pixel_news/application/explore/explore_cubit.dart'
    as _i16;
import 'package:playground_news/pixel_news/application/most_popular/most_popular_cubit.dart'
    as _i14;
import 'package:playground_news/pixel_news/application/top_stories/top_stories_cubit.dart'
    as _i15;
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart'
    as _i10;
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart'
    as _i12;
import 'package:playground_news/pixel_news/infrastructure/core/api_helper.dart'
    as _i7;
import 'package:playground_news/pixel_news/infrastructure/explore/data_sources/explore_data_sources.dart'
    as _i8;
import 'package:playground_news/pixel_news/infrastructure/explore/repository/explore_repository.dart'
    as _i11;
import 'package:playground_news/pixel_news/infrastructure/home/data_sources/home_data_sources.dart'
    as _i9;
import 'package:playground_news/pixel_news/infrastructure/home/repository/home_repository.dart'
    as _i13;

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
    gh.lazySingleton<_i5.Logger>(() => registerModule.logger);
    gh.factory<_i6.Dio>(() => registerModule.dio(gh<_i4.Env>()));
    gh.lazySingleton<_i7.ApiHelper>(() => _i7.ApiHelper(gh<_i6.Dio>()));
    gh.factory<_i8.ExploreDataSources>(
        () => _i8.ExploreDataSources(gh<_i7.ApiHelper>()));
    gh.factory<_i9.HomeDataSources>(
        () => _i9.HomeDataSources(gh<_i7.ApiHelper>()));
    gh.lazySingleton<_i10.IExploreRepository>(
        () => _i11.ExploreRepository(gh<_i8.ExploreDataSources>()));
    gh.lazySingleton<_i12.IHomeRepository>(
        () => _i13.HomeRepository(gh<_i9.HomeDataSources>()));
    gh.factory<_i14.MostPopularCubit>(
        () => _i14.MostPopularCubit(gh<_i12.IHomeRepository>()));
    gh.factory<_i15.TopStoriesCubit>(
        () => _i15.TopStoriesCubit(gh<_i12.IHomeRepository>()));
    gh.factory<_i16.ExploreCubit>(
        () => _i16.ExploreCubit(gh<_i10.IExploreRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
