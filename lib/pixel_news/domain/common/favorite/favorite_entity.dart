import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';

part 'favorite_entity.freezed.dart';

@freezed
class FavoriteEntity with _$FavoriteEntity {
  factory FavoriteEntity({
    required ArticleModel article,
    @Default(false) bool isFavorite,
  }) = _FavoriteEntity;

  bool equals(FavoriteEntity other) => this == other;
}
