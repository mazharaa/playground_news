import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart';
import 'package:playground_news/pixel_news/infrastructure/explore/data_sources/explore_data_sources.dart';

@LazySingleton(as: IExploreRepository)
class ExploreRepository implements IExploreRepository {
  final ExploreDataSources _dataSources;

  ExploreRepository(this._dataSources);

  @override
  Future<Either<AppFailure, List<ArticleModel>>> exploreArticles(
      {required String query, required String sort}) async {
    try {
      final response = await _dataSources.exploreArticles(
        query: query,
        sort: sort,
      );
      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
