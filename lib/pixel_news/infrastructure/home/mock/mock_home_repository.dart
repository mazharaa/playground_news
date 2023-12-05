import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart';

// @LazySingleton(as: IHomeRepository)
class MockHomeRepository implements IHomeRepository {
  @override
  Future<Either<AppFailure, List<ArticleModel>>> getMostPopular() async {
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

  @override
  Future<Either<AppFailure, List<ArticleModel>>> getTopStories(
      String section) async {
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
