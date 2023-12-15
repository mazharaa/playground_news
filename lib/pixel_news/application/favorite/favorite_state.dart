part of 'favorite_cubit.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const FavoriteState._();

  const factory FavoriteState({
    required List<ArticleModel> favoritedNews,
  }) = _FavoriteState;

  factory FavoriteState.initial() => const FavoriteState(
        favoritedNews: [],
      );

  FavoriteState get unmodified => copyWith(favoritedNews: []);

  bool isFavorite(ArticleModel article) {
    return favoritedNews.contains(article);
  }

  factory FavoriteState.fromMap(Map<String, dynamic> map) {
    return FavoriteState(
      favoritedNews: (map['favoritedNews'] as List<dynamic>?)
              ?.map((dynamic item) =>
                  ArticleModel.fromJson(item as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toMap() {
    return {'favoritedNews': favoritedNews};
  }
}
