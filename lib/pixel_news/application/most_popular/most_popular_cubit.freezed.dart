// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'most_popular_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MostPopularState {
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MostPopularStateCopyWith<MostPopularState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostPopularStateCopyWith<$Res> {
  factory $MostPopularStateCopyWith(
          MostPopularState value, $Res Function(MostPopularState) then) =
      _$MostPopularStateCopyWithImpl<$Res, MostPopularState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading});
}

/// @nodoc
class _$MostPopularStateCopyWithImpl<$Res, $Val extends MostPopularState>
    implements $MostPopularStateCopyWith<$Res> {
  _$MostPopularStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceed = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      failureOrSucceed: null == failureOrSucceed
          ? _value.failureOrSucceed
          : failureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<ArticleModel>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MostPopularStateImplCopyWith<$Res>
    implements $MostPopularStateCopyWith<$Res> {
  factory _$$MostPopularStateImplCopyWith(_$MostPopularStateImpl value,
          $Res Function(_$MostPopularStateImpl) then) =
      __$$MostPopularStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading});
}

/// @nodoc
class __$$MostPopularStateImplCopyWithImpl<$Res>
    extends _$MostPopularStateCopyWithImpl<$Res, _$MostPopularStateImpl>
    implements _$$MostPopularStateImplCopyWith<$Res> {
  __$$MostPopularStateImplCopyWithImpl(_$MostPopularStateImpl _value,
      $Res Function(_$MostPopularStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceed = null,
    Object? isLoading = null,
  }) {
    return _then(_$MostPopularStateImpl(
      failureOrSucceed: null == failureOrSucceed
          ? _value.failureOrSucceed
          : failureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<ArticleModel>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MostPopularStateImpl extends _MostPopularState {
  const _$MostPopularStateImpl(
      {required this.failureOrSucceed, required this.isLoading})
      : super._();

  @override
  final Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MostPopularState(failureOrSucceed: $failureOrSucceed, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MostPopularStateImpl &&
            (identical(other.failureOrSucceed, failureOrSucceed) ||
                other.failureOrSucceed == failureOrSucceed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrSucceed, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MostPopularStateImplCopyWith<_$MostPopularStateImpl> get copyWith =>
      __$$MostPopularStateImplCopyWithImpl<_$MostPopularStateImpl>(
          this, _$identity);
}

abstract class _MostPopularState extends MostPopularState {
  const factory _MostPopularState(
      {required final Option<Either<AppFailure, List<ArticleModel>>>
          failureOrSucceed,
      required final bool isLoading}) = _$MostPopularStateImpl;
  const _MostPopularState._() : super._();

  @override
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$MostPopularStateImplCopyWith<_$MostPopularStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
