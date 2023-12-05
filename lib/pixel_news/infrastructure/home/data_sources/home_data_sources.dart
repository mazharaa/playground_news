import 'package:injectable/injectable.dart';
import 'package:playground_news/pixel_news/core/commons/api_path_constants.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/infrastructure/core/api_helper.dart';

@injectable
class HomeDataSources {
  final ApiHelper _helper;

  HomeDataSources(this._helper);

  Future<List<ArticleModel>> getMostPopular() async {
    final response = await _helper.get(
      path: ApiPathConstants.mostPopular,
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 20),
      (i) => ArticleModel.fromMostPopular(rawList[i]),
    );

    return list;
  }

  Future<List<ArticleModel>> getTopStories(String section) async {
    final response = await _helper.get(
      path: ApiPathConstants.topSories(section),
    );

    final rawList = response.data as List;

    final list = List.generate(
      rawList.length.clamp(0, 20),
      (i) => ArticleModel.fromJson(rawList[i]),
    );

    return list;
  }
}
