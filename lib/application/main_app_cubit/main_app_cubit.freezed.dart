// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainAppState {
  MainAppType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainAppStateCopyWith<MainAppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAppStateCopyWith<$Res> {
  factory $MainAppStateCopyWith(
          MainAppState value, $Res Function(MainAppState) then) =
      _$MainAppStateCopyWithImpl<$Res, MainAppState>;
  @useResult
  $Res call({MainAppType type});

  $MainAppTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$MainAppStateCopyWithImpl<$Res, $Val extends MainAppState>
    implements $MainAppStateCopyWith<$Res> {
  _$MainAppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainAppType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainAppTypeCopyWith<$Res> get type {
    return $MainAppTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainAppStateImplCopyWith<$Res>
    implements $MainAppStateCopyWith<$Res> {
  factory _$$MainAppStateImplCopyWith(
          _$MainAppStateImpl value, $Res Function(_$MainAppStateImpl) then) =
      __$$MainAppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainAppType type});

  @override
  $MainAppTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$MainAppStateImplCopyWithImpl<$Res>
    extends _$MainAppStateCopyWithImpl<$Res, _$MainAppStateImpl>
    implements _$$MainAppStateImplCopyWith<$Res> {
  __$$MainAppStateImplCopyWithImpl(
      _$MainAppStateImpl _value, $Res Function(_$MainAppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$MainAppStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MainAppType,
    ));
  }
}

/// @nodoc

class _$MainAppStateImpl extends _MainAppState {
  const _$MainAppStateImpl({required this.type}) : super._();

  @override
  final MainAppType type;

  @override
  String toString() {
    return 'MainAppState(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainAppStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainAppStateImplCopyWith<_$MainAppStateImpl> get copyWith =>
      __$$MainAppStateImplCopyWithImpl<_$MainAppStateImpl>(this, _$identity);
}

abstract class _MainAppState extends MainAppState {
  const factory _MainAppState({required final MainAppType type}) =
      _$MainAppStateImpl;
  const _MainAppState._() : super._();

  @override
  MainAppType get type;
  @override
  @JsonKey(ignore: true)
  _$$MainAppStateImplCopyWith<_$MainAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainAppType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() pixelNews,
    required TResult Function() playGround,
    required TResult Function() helloWorld,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? pixelNews,
    TResult? Function()? playGround,
    TResult? Function()? helloWorld,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? pixelNews,
    TResult Function()? playGround,
    TResult Function()? helloWorld,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_PixelNews value) pixelNews,
    required TResult Function(_PlayGround value) playGround,
    required TResult Function(_HelloWorld value) helloWorld,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_PixelNews value)? pixelNews,
    TResult? Function(_PlayGround value)? playGround,
    TResult? Function(_HelloWorld value)? helloWorld,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_PixelNews value)? pixelNews,
    TResult Function(_PlayGround value)? playGround,
    TResult Function(_HelloWorld value)? helloWorld,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainAppTypeCopyWith<$Res> {
  factory $MainAppTypeCopyWith(
          MainAppType value, $Res Function(MainAppType) then) =
      _$MainAppTypeCopyWithImpl<$Res, MainAppType>;
}

/// @nodoc
class _$MainAppTypeCopyWithImpl<$Res, $Val extends MainAppType>
    implements $MainAppTypeCopyWith<$Res> {
  _$MainAppTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$MainAppTypeCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'MainAppType.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() pixelNews,
    required TResult Function() playGround,
    required TResult Function() helloWorld,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? pixelNews,
    TResult? Function()? playGround,
    TResult? Function()? helloWorld,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? pixelNews,
    TResult Function()? playGround,
    TResult Function()? helloWorld,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_PixelNews value) pixelNews,
    required TResult Function(_PlayGround value) playGround,
    required TResult Function(_HelloWorld value) helloWorld,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_PixelNews value)? pixelNews,
    TResult? Function(_PlayGround value)? playGround,
    TResult? Function(_HelloWorld value)? helloWorld,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_PixelNews value)? pixelNews,
    TResult Function(_PlayGround value)? playGround,
    TResult Function(_HelloWorld value)? helloWorld,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements MainAppType {
  const factory _None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$PixelNewsImplCopyWith<$Res> {
  factory _$$PixelNewsImplCopyWith(
          _$PixelNewsImpl value, $Res Function(_$PixelNewsImpl) then) =
      __$$PixelNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PixelNewsImplCopyWithImpl<$Res>
    extends _$MainAppTypeCopyWithImpl<$Res, _$PixelNewsImpl>
    implements _$$PixelNewsImplCopyWith<$Res> {
  __$$PixelNewsImplCopyWithImpl(
      _$PixelNewsImpl _value, $Res Function(_$PixelNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PixelNewsImpl implements _PixelNews {
  const _$PixelNewsImpl();

  @override
  String toString() {
    return 'MainAppType.pixelNews()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PixelNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() pixelNews,
    required TResult Function() playGround,
    required TResult Function() helloWorld,
  }) {
    return pixelNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? pixelNews,
    TResult? Function()? playGround,
    TResult? Function()? helloWorld,
  }) {
    return pixelNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? pixelNews,
    TResult Function()? playGround,
    TResult Function()? helloWorld,
    required TResult orElse(),
  }) {
    if (pixelNews != null) {
      return pixelNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_PixelNews value) pixelNews,
    required TResult Function(_PlayGround value) playGround,
    required TResult Function(_HelloWorld value) helloWorld,
  }) {
    return pixelNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_PixelNews value)? pixelNews,
    TResult? Function(_PlayGround value)? playGround,
    TResult? Function(_HelloWorld value)? helloWorld,
  }) {
    return pixelNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_PixelNews value)? pixelNews,
    TResult Function(_PlayGround value)? playGround,
    TResult Function(_HelloWorld value)? helloWorld,
    required TResult orElse(),
  }) {
    if (pixelNews != null) {
      return pixelNews(this);
    }
    return orElse();
  }
}

abstract class _PixelNews implements MainAppType {
  const factory _PixelNews() = _$PixelNewsImpl;
}

/// @nodoc
abstract class _$$PlayGroundImplCopyWith<$Res> {
  factory _$$PlayGroundImplCopyWith(
          _$PlayGroundImpl value, $Res Function(_$PlayGroundImpl) then) =
      __$$PlayGroundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayGroundImplCopyWithImpl<$Res>
    extends _$MainAppTypeCopyWithImpl<$Res, _$PlayGroundImpl>
    implements _$$PlayGroundImplCopyWith<$Res> {
  __$$PlayGroundImplCopyWithImpl(
      _$PlayGroundImpl _value, $Res Function(_$PlayGroundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayGroundImpl implements _PlayGround {
  const _$PlayGroundImpl();

  @override
  String toString() {
    return 'MainAppType.playGround()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayGroundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() pixelNews,
    required TResult Function() playGround,
    required TResult Function() helloWorld,
  }) {
    return playGround();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? pixelNews,
    TResult? Function()? playGround,
    TResult? Function()? helloWorld,
  }) {
    return playGround?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? pixelNews,
    TResult Function()? playGround,
    TResult Function()? helloWorld,
    required TResult orElse(),
  }) {
    if (playGround != null) {
      return playGround();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_PixelNews value) pixelNews,
    required TResult Function(_PlayGround value) playGround,
    required TResult Function(_HelloWorld value) helloWorld,
  }) {
    return playGround(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_PixelNews value)? pixelNews,
    TResult? Function(_PlayGround value)? playGround,
    TResult? Function(_HelloWorld value)? helloWorld,
  }) {
    return playGround?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_PixelNews value)? pixelNews,
    TResult Function(_PlayGround value)? playGround,
    TResult Function(_HelloWorld value)? helloWorld,
    required TResult orElse(),
  }) {
    if (playGround != null) {
      return playGround(this);
    }
    return orElse();
  }
}

abstract class _PlayGround implements MainAppType {
  const factory _PlayGround() = _$PlayGroundImpl;
}

/// @nodoc
abstract class _$$HelloWorldImplCopyWith<$Res> {
  factory _$$HelloWorldImplCopyWith(
          _$HelloWorldImpl value, $Res Function(_$HelloWorldImpl) then) =
      __$$HelloWorldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HelloWorldImplCopyWithImpl<$Res>
    extends _$MainAppTypeCopyWithImpl<$Res, _$HelloWorldImpl>
    implements _$$HelloWorldImplCopyWith<$Res> {
  __$$HelloWorldImplCopyWithImpl(
      _$HelloWorldImpl _value, $Res Function(_$HelloWorldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HelloWorldImpl implements _HelloWorld {
  const _$HelloWorldImpl();

  @override
  String toString() {
    return 'MainAppType.helloWorld()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HelloWorldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() pixelNews,
    required TResult Function() playGround,
    required TResult Function() helloWorld,
  }) {
    return helloWorld();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? pixelNews,
    TResult? Function()? playGround,
    TResult? Function()? helloWorld,
  }) {
    return helloWorld?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? pixelNews,
    TResult Function()? playGround,
    TResult Function()? helloWorld,
    required TResult orElse(),
  }) {
    if (helloWorld != null) {
      return helloWorld();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_PixelNews value) pixelNews,
    required TResult Function(_PlayGround value) playGround,
    required TResult Function(_HelloWorld value) helloWorld,
  }) {
    return helloWorld(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_PixelNews value)? pixelNews,
    TResult? Function(_PlayGround value)? playGround,
    TResult? Function(_HelloWorld value)? helloWorld,
  }) {
    return helloWorld?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_PixelNews value)? pixelNews,
    TResult Function(_PlayGround value)? playGround,
    TResult Function(_HelloWorld value)? helloWorld,
    required TResult orElse(),
  }) {
    if (helloWorld != null) {
      return helloWorld(this);
    }
    return orElse();
  }
}

abstract class _HelloWorld implements MainAppType {
  const factory _HelloWorld() = _$HelloWorldImpl;
}
