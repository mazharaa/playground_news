// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_calculator_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimpleCalculatorHistoryEntity {
  int get id => throw _privateConstructorUsedError;
  String get leftValue => throw _privateConstructorUsedError;
  String get rightValue => throw _privateConstructorUsedError;
  SimpleCalculatorType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleCalculatorHistoryEntityCopyWith<SimpleCalculatorHistoryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCalculatorHistoryEntityCopyWith<$Res> {
  factory $SimpleCalculatorHistoryEntityCopyWith(
          SimpleCalculatorHistoryEntity value,
          $Res Function(SimpleCalculatorHistoryEntity) then) =
      _$SimpleCalculatorHistoryEntityCopyWithImpl<$Res,
          SimpleCalculatorHistoryEntity>;
  @useResult
  $Res call(
      {int id, String leftValue, String rightValue, SimpleCalculatorType type});

  $SimpleCalculatorTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$SimpleCalculatorHistoryEntityCopyWithImpl<$Res,
        $Val extends SimpleCalculatorHistoryEntity>
    implements $SimpleCalculatorHistoryEntityCopyWith<$Res> {
  _$SimpleCalculatorHistoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leftValue = null,
    Object? rightValue = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leftValue: null == leftValue
          ? _value.leftValue
          : leftValue // ignore: cast_nullable_to_non_nullable
              as String,
      rightValue: null == rightValue
          ? _value.rightValue
          : rightValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorType,
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
abstract class _$$SimpleCalculatorHistoryEntityImplCopyWith<$Res>
    implements $SimpleCalculatorHistoryEntityCopyWith<$Res> {
  factory _$$SimpleCalculatorHistoryEntityImplCopyWith(
          _$SimpleCalculatorHistoryEntityImpl value,
          $Res Function(_$SimpleCalculatorHistoryEntityImpl) then) =
      __$$SimpleCalculatorHistoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String leftValue, String rightValue, SimpleCalculatorType type});

  @override
  $SimpleCalculatorTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$SimpleCalculatorHistoryEntityImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorHistoryEntityCopyWithImpl<$Res,
        _$SimpleCalculatorHistoryEntityImpl>
    implements _$$SimpleCalculatorHistoryEntityImplCopyWith<$Res> {
  __$$SimpleCalculatorHistoryEntityImplCopyWithImpl(
      _$SimpleCalculatorHistoryEntityImpl _value,
      $Res Function(_$SimpleCalculatorHistoryEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leftValue = null,
    Object? rightValue = null,
    Object? type = null,
  }) {
    return _then(_$SimpleCalculatorHistoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      leftValue: null == leftValue
          ? _value.leftValue
          : leftValue // ignore: cast_nullable_to_non_nullable
              as String,
      rightValue: null == rightValue
          ? _value.rightValue
          : rightValue // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorType,
    ));
  }
}

/// @nodoc

class _$SimpleCalculatorHistoryEntityImpl
    extends _SimpleCalculatorHistoryEntity {
  const _$SimpleCalculatorHistoryEntityImpl(
      {required this.id,
      required this.leftValue,
      required this.rightValue,
      required this.type})
      : super._();

  @override
  final int id;
  @override
  final String leftValue;
  @override
  final String rightValue;
  @override
  final SimpleCalculatorType type;

  @override
  String toString() {
    return 'SimpleCalculatorHistoryEntity(id: $id, leftValue: $leftValue, rightValue: $rightValue, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCalculatorHistoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leftValue, leftValue) ||
                other.leftValue == leftValue) &&
            (identical(other.rightValue, rightValue) ||
                other.rightValue == rightValue) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, leftValue, rightValue, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCalculatorHistoryEntityImplCopyWith<
          _$SimpleCalculatorHistoryEntityImpl>
      get copyWith => __$$SimpleCalculatorHistoryEntityImplCopyWithImpl<
          _$SimpleCalculatorHistoryEntityImpl>(this, _$identity);
}

abstract class _SimpleCalculatorHistoryEntity
    extends SimpleCalculatorHistoryEntity {
  const factory _SimpleCalculatorHistoryEntity(
          {required final int id,
          required final String leftValue,
          required final String rightValue,
          required final SimpleCalculatorType type}) =
      _$SimpleCalculatorHistoryEntityImpl;
  const _SimpleCalculatorHistoryEntity._() : super._();

  @override
  int get id;
  @override
  String get leftValue;
  @override
  String get rightValue;
  @override
  SimpleCalculatorType get type;
  @override
  @JsonKey(ignore: true)
  _$$SimpleCalculatorHistoryEntityImplCopyWith<
          _$SimpleCalculatorHistoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
