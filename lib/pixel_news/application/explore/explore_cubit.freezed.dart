// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExploreState {
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get sortType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExploreStateCopyWith<ExploreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res, ExploreState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading,
      String sortType});
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res, $Val extends ExploreState>
    implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceed = null,
    Object? isLoading = null,
    Object? sortType = null,
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
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreStateImplCopyWith<$Res>
    implements $ExploreStateCopyWith<$Res> {
  factory _$$ExploreStateImplCopyWith(
          _$ExploreStateImpl value, $Res Function(_$ExploreStateImpl) then) =
      __$$ExploreStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading,
      String sortType});
}

/// @nodoc
class __$$ExploreStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreStateImpl>
    implements _$$ExploreStateImplCopyWith<$Res> {
  __$$ExploreStateImplCopyWithImpl(
      _$ExploreStateImpl _value, $Res Function(_$ExploreStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceed = null,
    Object? isLoading = null,
    Object? sortType = null,
  }) {
    return _then(_$ExploreStateImpl(
      failureOrSucceed: null == failureOrSucceed
          ? _value.failureOrSucceed
          : failureOrSucceed // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, List<ArticleModel>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExploreStateImpl extends _ExploreState {
  const _$ExploreStateImpl(
      {required this.failureOrSucceed,
      required this.isLoading,
      required this.sortType})
      : super._();

  @override
  final Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed;
  @override
  final bool isLoading;
  @override
  final String sortType;

  @override
  String toString() {
    return 'ExploreState(failureOrSucceed: $failureOrSucceed, isLoading: $isLoading, sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreStateImpl &&
            (identical(other.failureOrSucceed, failureOrSucceed) ||
                other.failureOrSucceed == failureOrSucceed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, failureOrSucceed, isLoading, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      __$$ExploreStateImplCopyWithImpl<_$ExploreStateImpl>(this, _$identity);
}

abstract class _ExploreState extends ExploreState {
  const factory _ExploreState(
      {required final Option<Either<AppFailure, List<ArticleModel>>>
          failureOrSucceed,
      required final bool isLoading,
      required final String sortType}) = _$ExploreStateImpl;
  const _ExploreState._() : super._();

  @override
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed;
  @override
  bool get isLoading;
  @override
  String get sortType;
  @override
  @JsonKey(ignore: true)
  _$$ExploreStateImplCopyWith<_$ExploreStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
