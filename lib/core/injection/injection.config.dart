// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:playground_news/core/env/env.dart' as _i764;
import 'package:playground_news/core/routes/app_router.dart' as _i839;
import 'package:playground_news/core/utils/register_module.dart' as _i762;
import 'package:playground_news/pixel_news/application/explore/explore_cubit.dart'
    as _i217;
import 'package:playground_news/pixel_news/application/most_popular/most_popular_cubit.dart'
    as _i324;
import 'package:playground_news/pixel_news/application/top_stories/top_stories_cubit.dart'
    as _i754;
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart'
    as _i652;
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart'
    as _i420;
import 'package:playground_news/pixel_news/infrastructure/core/api_helper.dart'
    as _i221;
import 'package:playground_news/pixel_news/infrastructure/explore/data_sources/explore_data_sources.dart'
    as _i896;
import 'package:playground_news/pixel_news/infrastructure/explore/repository/explore_repository.dart'
    as _i976;
import 'package:playground_news/pixel_news/infrastructure/home/data_sources/home_data_sources.dart'
    as _i380;
import 'package:playground_news/pixel_news/infrastructure/home/repository/home_repository.dart'
    as _i815;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i764.Env>(() => _i764.Env());
    gh.singleton<_i839.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.factory<_i361.Dio>(() => registerModule.dio(gh<_i764.Env>()));
    gh.lazySingleton<_i221.ApiHelper>(() => _i221.ApiHelper(gh<_i361.Dio>()));
    gh.factory<_i380.HomeDataSources>(
        () => _i380.HomeDataSources(gh<_i221.ApiHelper>()));
    gh.factory<_i896.ExploreDataSources>(
        () => _i896.ExploreDataSources(gh<_i221.ApiHelper>()));
    gh.lazySingleton<_i652.IExploreRepository>(
        () => _i976.ExploreRepository(gh<_i896.ExploreDataSources>()));
    gh.lazySingleton<_i420.IHomeRepository>(
        () => _i815.HomeRepository(gh<_i380.HomeDataSources>()));
    gh.factory<_i324.MostPopularCubit>(
        () => _i324.MostPopularCubit(gh<_i420.IHomeRepository>()));
    gh.factory<_i754.TopStoriesCubit>(
        () => _i754.TopStoriesCubit(gh<_i420.IHomeRepository>()));
    gh.factory<_i217.ExploreCubit>(
        () => _i217.ExploreCubit(gh<_i652.IExploreRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i762.RegisterModule {}
