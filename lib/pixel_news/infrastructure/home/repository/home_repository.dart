import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/domain/core/app_failure.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/domain/home/i_home_repository.dart';
import 'package:playground_news/pixel_news/infrastructure/home/data_sources/home_data_sources.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final HomeDataSources _dataSources;

  HomeRepository(this._dataSources);

  @override
  Future<Either<AppFailure, List<ArticleModel>>> getMostPopular() async {
    try {
      final response = await _dataSources.getMostPopular();
      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }

  @override
  Future<Either<AppFailure, List<ArticleModel>>> getTopStories(
      String section) async {
    try {
      final response = await _dataSources.getTopStories(section);
      return right(response);
    } catch (e) {
      return left(AppFailure.fromServerSide(e.toString()));
    }
  }
}
