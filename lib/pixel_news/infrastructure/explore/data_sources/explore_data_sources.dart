import 'package:injectable/injectable.dart';
import 'package:playground_news/pixel_news/core/commons/api_path_constants.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/infrastructure/core/api_helper.dart';

@injectable
class ExploreDataSources {
  final ApiHelper _helper;

  ExploreDataSources(this._helper);

  Future<List<ArticleModel>> exploreArticles({
    required String query,
    required String sort,
  }) async {
    final response = await _helper.get(
      path: ApiPathConstants.exploreArticles,
      queryParameters: {
        'q': query,
        'sort': sort,
      },
    );

    final rawList = response.data['docs'] as List;

    final list = List.generate(rawList.length.clamp(0, 20),
        (i) => ArticleModel.fromExplore(rawList[i]));

    return list;
  }
}
