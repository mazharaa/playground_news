import 'package:fpdart/fpdart.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';

abstract class IHomeRepository {
  Future<Either<AppFailure, List<ArticleModel>>> getTopStories(String section);

  Future<Either<AppFailure, List<ArticleModel>>> getMostPopular();
}
