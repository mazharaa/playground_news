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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  bool operator ==(Object other) {
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
