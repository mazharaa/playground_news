import 'package:fpdart/fpdart.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/explore/i_explore_repository.dart';

class MockExploreRepository implements IExploreRepository {
  @override
  Future<Either<AppFailure, List<ArticleModel>>> exploreArticles(
      {required String query, required String sort}) async {
    try {
      return right([
        ArticleModel(
          id: "123",
          title: "Test Mock",
          byline: "author",
          multimedia: [],
          publishedDate: "Today",
        )
      ]);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
