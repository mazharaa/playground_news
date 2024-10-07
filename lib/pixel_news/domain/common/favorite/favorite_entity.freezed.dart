// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEntity {
  ArticleModel get article => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteEntityCopyWith<FavoriteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEntityCopyWith<$Res> {
  factory $FavoriteEntityCopyWith(
          FavoriteEntity value, $Res Function(FavoriteEntity) then) =
      _$FavoriteEntityCopyWithImpl<$Res, FavoriteEntity>;
  @useResult
  $Res call({ArticleModel article, bool isFavorite});

  $ArticleModelCopyWith<$Res> get article;
}

/// @nodoc
class _$FavoriteEntityCopyWithImpl<$Res, $Val extends FavoriteEntity>
    implements $FavoriteEntityCopyWith<$Res> {
  _$FavoriteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleModelCopyWith<$Res> get article {
    return $ArticleModelCopyWith<$Res>(_value.article, (value) {
      return _then(_value.copyWith(article: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteEntityImplCopyWith<$Res>
    implements $FavoriteEntityCopyWith<$Res> {
  factory _$$FavoriteEntityImplCopyWith(_$FavoriteEntityImpl value,
          $Res Function(_$FavoriteEntityImpl) then) =
      __$$FavoriteEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ArticleModel article, bool isFavorite});

  @override
  $ArticleModelCopyWith<$Res> get article;
}

/// @nodoc
class __$$FavoriteEntityImplCopyWithImpl<$Res>
    extends _$FavoriteEntityCopyWithImpl<$Res, _$FavoriteEntityImpl>
    implements _$$FavoriteEntityImplCopyWith<$Res> {
  __$$FavoriteEntityImplCopyWithImpl(
      _$FavoriteEntityImpl _value, $Res Function(_$FavoriteEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
    Object? isFavorite = null,
  }) {
    return _then(_$FavoriteEntityImpl(
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteEntityImpl implements _FavoriteEntity {
  _$FavoriteEntityImpl({required this.article, this.isFavorite = false});

  @override
  final ArticleModel article;
  @override
  @JsonKey()
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoriteEntity(article: $article, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteEntityImpl &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      __$$FavoriteEntityImplCopyWithImpl<_$FavoriteEntityImpl>(
          this, _$identity);

  @override
  bool equals(FavoriteEntity other) {
    // TODO: implement equals
    throw UnimplementedError();
  }
}

abstract class _FavoriteEntity implements FavoriteEntity {
  factory _FavoriteEntity(
      {required final ArticleModel article,
      final bool isFavorite}) = _$FavoriteEntityImpl;

  @override
  ArticleModel get article;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteEntityImplCopyWith<_$FavoriteEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
