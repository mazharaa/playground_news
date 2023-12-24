import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends HydratedCubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteState.initial());

  void toggleFavorite(ArticleModel article) {
    List<ArticleModel> favList = List.from(state.favoritedNews);

    if (favList.contains(article)) {
      favList.removeWhere((element) => element == article);
    } else {
      favList.add(article);
    }

    emit(state.copyWith(favoritedNews: favList));
  }

  void clearFavorites() {
    emit(const FavoriteState(favoritedNews: []));
  }

  @override
  FavoriteState? fromJson(Map<String, dynamic> json) {
    return FavoriteState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(FavoriteState state) {
    return state.toMap();
  }
}
