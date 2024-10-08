// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputValidationEntity {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationEntityCopyWith<InputValidationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationEntityCopyWith<$Res> {
  factory $InputValidationEntityCopyWith(InputValidationEntity value,
          $Res Function(InputValidationEntity) then) =
      _$InputValidationEntityCopyWithImpl<$Res, InputValidationEntity>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$InputValidationEntityCopyWithImpl<$Res,
        $Val extends InputValidationEntity>
    implements $InputValidationEntityCopyWith<$Res> {
  _$InputValidationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputValidationEntityImplCopyWith<$Res>
    implements $InputValidationEntityCopyWith<$Res> {
  factory _$$InputValidationEntityImplCopyWith(
          _$InputValidationEntityImpl value,
          $Res Function(_$InputValidationEntityImpl) then) =
      __$$InputValidationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$InputValidationEntityImplCopyWithImpl<$Res>
    extends _$InputValidationEntityCopyWithImpl<$Res,
        _$InputValidationEntityImpl>
    implements _$$InputValidationEntityImplCopyWith<$Res> {
  __$$InputValidationEntityImplCopyWithImpl(_$InputValidationEntityImpl _value,
      $Res Function(_$InputValidationEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$InputValidationEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputValidationEntityImpl extends _InputValidationEntity
    with DiagnosticableTreeMixin {
  const _$InputValidationEntityImpl({required this.name, required this.email})
      : super._();

  @override
  final String name;
  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InputValidationEntity(name: $name, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InputValidationEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputValidationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputValidationEntityImplCopyWith<_$InputValidationEntityImpl>
      get copyWith => __$$InputValidationEntityImplCopyWithImpl<
          _$InputValidationEntityImpl>(this, _$identity);
}

abstract class _InputValidationEntity extends InputValidationEntity {
  const factory _InputValidationEntity(
      {required final String name,
      required final String email}) = _$InputValidationEntityImpl;
  const _InputValidationEntity._() : super._();

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$InputValidationEntityImplCopyWith<_$InputValidationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
