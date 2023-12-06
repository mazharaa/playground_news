// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_stories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopStoriesState {
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopStoriesStateCopyWith<TopStoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesStateCopyWith<$Res> {
  factory $TopStoriesStateCopyWith(
          TopStoriesState value, $Res Function(TopStoriesState) then) =
      _$TopStoriesStateCopyWithImpl<$Res, TopStoriesState>;
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading});
}

/// @nodoc
class _$TopStoriesStateCopyWithImpl<$Res, $Val extends TopStoriesState>
    implements $TopStoriesStateCopyWith<$Res> {
  _$TopStoriesStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TopStoriesStateImplCopyWith<$Res>
    implements $TopStoriesStateCopyWith<$Res> {
  factory _$$TopStoriesStateImplCopyWith(_$TopStoriesStateImpl value,
          $Res Function(_$TopStoriesStateImpl) then) =
      __$$TopStoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed,
      bool isLoading});
}

/// @nodoc
class __$$TopStoriesStateImplCopyWithImpl<$Res>
    extends _$TopStoriesStateCopyWithImpl<$Res, _$TopStoriesStateImpl>
    implements _$$TopStoriesStateImplCopyWith<$Res> {
  __$$TopStoriesStateImplCopyWithImpl(
      _$TopStoriesStateImpl _value, $Res Function(_$TopStoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrSucceed = null,
    Object? isLoading = null,
  }) {
    return _then(_$TopStoriesStateImpl(
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

class _$TopStoriesStateImpl extends _TopStoriesState {
  const _$TopStoriesStateImpl(
      {required this.failureOrSucceed, required this.isLoading})
      : super._();

  @override
  final Option<Either<AppFailure, List<ArticleModel>>> failureOrSucceed;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'TopStoriesState(failureOrSucceed: $failureOrSucceed, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStoriesStateImpl &&
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
  _$$TopStoriesStateImplCopyWith<_$TopStoriesStateImpl> get copyWith =>
      __$$TopStoriesStateImplCopyWithImpl<_$TopStoriesStateImpl>(
          this, _$identity);
}

abstract class _TopStoriesState extends TopStoriesState {
  const factory _TopStoriesState(
      {required final Option<Either<AppFailure, List<ArticleModel>>>
          failureOrSucceed,
      required final bool isLoading}) = _$TopStoriesStateImpl;
  const _TopStoriesState._() : super._();

  @override
  Option<Either<AppFailure, List<ArticleModel>>> get failureOrSucceed;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TopStoriesStateImplCopyWith<_$TopStoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
