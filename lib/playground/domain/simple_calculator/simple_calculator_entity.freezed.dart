// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_calculator_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimpleCalculatorEntity {
  double get value => throw _privateConstructorUsedError;
  String get leftForm => throw _privateConstructorUsedError;
  String get rightForm => throw _privateConstructorUsedError;
  SimpleCalculatorType get type => throw _privateConstructorUsedError;
  List<SimpleCalculatorHistoryEntity> get histories =>
      throw _privateConstructorUsedError;
  bool get isPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleCalculatorEntityCopyWith<SimpleCalculatorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCalculatorEntityCopyWith<$Res> {
  factory $SimpleCalculatorEntityCopyWith(SimpleCalculatorEntity value,
          $Res Function(SimpleCalculatorEntity) then) =
      _$SimpleCalculatorEntityCopyWithImpl<$Res, SimpleCalculatorEntity>;
  @useResult
  $Res call(
      {double value,
      String leftForm,
      String rightForm,
      SimpleCalculatorType type,
      List<SimpleCalculatorHistoryEntity> histories,
      bool isPressed});

  $SimpleCalculatorTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SimpleCalculatorEntityCopyWithImpl<$Res,
        $Val extends SimpleCalculatorEntity>
    implements $SimpleCalculatorEntityCopyWith<$Res> {
  _$SimpleCalculatorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? leftForm = null,
    Object? rightForm = null,
    Object? type = null,
    Object? histories = null,
    Object? isPressed = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      leftForm: null == leftForm
          ? _value.leftForm
          : leftForm // ignore: cast_nullable_to_non_nullable
              as String,
      rightForm: null == rightForm
          ? _value.rightForm
          : rightForm // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorType,
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<SimpleCalculatorHistoryEntity>,
      isPressed: null == isPressed
          ? _value.isPressed
          : isPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleCalculatorTypeCopyWith<$Res> get type {
    return $SimpleCalculatorTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimpleCalculatorEntityImplCopyWith<$Res>
    implements $SimpleCalculatorEntityCopyWith<$Res> {
  factory _$$SimpleCalculatorEntityImplCopyWith(
          _$SimpleCalculatorEntityImpl value,
          $Res Function(_$SimpleCalculatorEntityImpl) then) =
      __$$SimpleCalculatorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double value,
      String leftForm,
      String rightForm,
      SimpleCalculatorType type,
      List<SimpleCalculatorHistoryEntity> histories,
      bool isPressed});

  @override
  $SimpleCalculatorTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$SimpleCalculatorEntityImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorEntityCopyWithImpl<$Res,
        _$SimpleCalculatorEntityImpl>
    implements _$$SimpleCalculatorEntityImplCopyWith<$Res> {
  __$$SimpleCalculatorEntityImplCopyWithImpl(
      _$SimpleCalculatorEntityImpl _value,
      $Res Function(_$SimpleCalculatorEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? leftForm = null,
    Object? rightForm = null,
    Object? type = null,
    Object? histories = null,
    Object? isPressed = null,
  }) {
    return _then(_$SimpleCalculatorEntityImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      leftForm: null == leftForm
          ? _value.leftForm
          : leftForm // ignore: cast_nullable_to_non_nullable
              as String,
      rightForm: null == rightForm
          ? _value.rightForm
          : rightForm // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorType,
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<SimpleCalculatorHistoryEntity>,
      isPressed: null == isPressed
          ? _value.isPressed
          : isPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SimpleCalculatorEntityImpl extends _SimpleCalculatorEntity {
  const _$SimpleCalculatorEntityImpl(
      {required this.value,
      required this.leftForm,
      required this.rightForm,
      required this.type,
      required final List<SimpleCalculatorHistoryEntity> histories,
      required this.isPressed})
      : _histories = histories,
        super._();

  @override
  final double value;
  @override
  final String leftForm;
  @override
  final String rightForm;
  @override
  final SimpleCalculatorType type;
  final List<SimpleCalculatorHistoryEntity> _histories;
  @override
  List<SimpleCalculatorHistoryEntity> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  final bool isPressed;

  @override
  String toString() {
    return 'SimpleCalculatorEntity(value: $value, leftForm: $leftForm, rightForm: $rightForm, type: $type, histories: $histories, isPressed: $isPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCalculatorEntityImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.leftForm, leftForm) ||
                other.leftForm == leftForm) &&
            (identical(other.rightForm, rightForm) ||
                other.rightForm == rightForm) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories) &&
            (identical(other.isPressed, isPressed) ||
                other.isPressed == isPressed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, leftForm, rightForm, type,
      const DeepCollectionEquality().hash(_histories), isPressed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCalculatorEntityImplCopyWith<_$SimpleCalculatorEntityImpl>
      get copyWith => __$$SimpleCalculatorEntityImplCopyWithImpl<
          _$SimpleCalculatorEntityImpl>(this, _$identity);
}

abstract class _SimpleCalculatorEntity extends SimpleCalculatorEntity {
  const factory _SimpleCalculatorEntity(
      {required final double value,
      required final String leftForm,
      required final String rightForm,
      required final SimpleCalculatorType type,
      required final List<SimpleCalculatorHistoryEntity> histories,
      required final bool isPressed}) = _$SimpleCalculatorEntityImpl;
  const _SimpleCalculatorEntity._() : super._();

  @override
  double get value;
  @override
  String get leftForm;
  @override
  String get rightForm;
  @override
  SimpleCalculatorType get type;
  @override
  List<SimpleCalculatorHistoryEntity> get histories;
  @override
  bool get isPressed;
  @override
  @JsonKey(ignore: true)
  _$$SimpleCalculatorEntityImplCopyWith<_$SimpleCalculatorEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
