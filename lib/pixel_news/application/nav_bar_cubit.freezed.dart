// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nav_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavBarState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavBarStateCopyWith<NavBarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavBarStateCopyWith<$Res> {
  factory $NavBarStateCopyWith(
          NavBarState value, $Res Function(NavBarState) then) =
      _$NavBarStateCopyWithImpl<$Res, NavBarState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$NavBarStateCopyWithImpl<$Res, $Val extends NavBarState>
    implements $NavBarStateCopyWith<$Res> {
  _$NavBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NavBarSateImplCopyWith<$Res>
    implements $NavBarStateCopyWith<$Res> {
  factory _$$NavBarSateImplCopyWith(
          _$NavBarSateImpl value, $Res Function(_$NavBarSateImpl) then) =
      __$$NavBarSateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$NavBarSateImplCopyWithImpl<$Res>
    extends _$NavBarStateCopyWithImpl<$Res, _$NavBarSateImpl>
    implements _$$NavBarSateImplCopyWith<$Res> {
  __$$NavBarSateImplCopyWithImpl(
      _$NavBarSateImpl _value, $Res Function(_$NavBarSateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$NavBarSateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavBarSateImpl extends _NavBarSate {
  const _$NavBarSateImpl({required this.selectedIndex}) : super._();

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'NavBarState(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavBarSateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavBarSateImplCopyWith<_$NavBarSateImpl> get copyWith =>
      __$$NavBarSateImplCopyWithImpl<_$NavBarSateImpl>(this, _$identity);
}

abstract class _NavBarSate extends NavBarState {
  const factory _NavBarSate({required final int selectedIndex}) =
      _$NavBarSateImpl;
  const _NavBarSate._() : super._();

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$NavBarSateImplCopyWith<_$NavBarSateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavBarType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavBarTypeCopyWith<$Res> {
  factory $NavBarTypeCopyWith(
          NavBarType value, $Res Function(NavBarType) then) =
      _$NavBarTypeCopyWithImpl<$Res, NavBarType>;
}

/// @nodoc
class _$NavBarTypeCopyWithImpl<$Res, $Val extends NavBarType>
    implements $NavBarTypeCopyWith<$Res> {
  _$NavBarTypeCopyWithImpl(this._value, this._then);

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
    extends _$NavBarTypeCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'NavBarType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
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
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements NavBarType {
  const factory _None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$NavBarTypeCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeImpl implements _Home {
  const _$HomeImpl();

  @override
  String toString() {
    return 'NavBarType.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class _Home implements NavBarType {
  const factory _Home() = _$HomeImpl;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$NavBarTypeCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl();

  @override
  String toString() {
    return 'NavBarType.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements NavBarType {
  const factory _Search() = _$SearchImpl;
}

/// @nodoc
abstract class _$$FavoriteImplCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$NavBarTypeCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoriteImpl implements _Favorite {
  const _$FavoriteImpl();

  @override
  String toString() {
    return 'NavBarType.favorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) {
    return favorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) {
    return favorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _Favorite implements NavBarType {
  const factory _Favorite() = _$FavoriteImpl;
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$NavBarTypeCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingImpl implements _Setting {
  const _$SettingImpl();

  @override
  String toString() {
    return 'NavBarType.setting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() home,
    required TResult Function() search,
    required TResult Function() favorite,
    required TResult Function() setting,
  }) {
    return setting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? home,
    TResult? Function()? search,
    TResult? Function()? favorite,
    TResult? Function()? setting,
  }) {
    return setting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? home,
    TResult Function()? search,
    TResult Function()? favorite,
    TResult Function()? setting,
    required TResult orElse(),
  }) {
    if (setting != null) {
      return setting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Home value) home,
    required TResult Function(_Search value) search,
    required TResult Function(_Favorite value) favorite,
    required TResult Function(_Setting value) setting,
  }) {
    return setting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Home value)? home,
    TResult? Function(_Search value)? search,
    TResult? Function(_Favorite value)? favorite,
    TResult? Function(_Setting value)? setting,
  }) {
    return setting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Home value)? home,
    TResult Function(_Search value)? search,
    TResult Function(_Favorite value)? favorite,
    TResult Function(_Setting value)? setting,
    required TResult orElse(),
  }) {
    if (setting != null) {
      return setting(this);
    }
    return orElse();
  }
}

abstract class _Setting implements NavBarType {
  const factory _Setting() = _$SettingImpl;
}
