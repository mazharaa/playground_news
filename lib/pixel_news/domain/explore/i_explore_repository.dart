import 'package:fpdart/fpdart.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';

abstract class IExploreRepository {
  Future<Either<AppFailure, List<ArticleModel>>> exploreArticles({
    required String query,
    required String sort,
  });
}
