// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputValidationState {
  InputValidationEntity get model => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get changeStates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationStateCopyWith<InputValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationStateCopyWith<$Res> {
  factory $InputValidationStateCopyWith(InputValidationState value,
          $Res Function(InputValidationState) then) =
      _$InputValidationStateCopyWithImpl<$Res, InputValidationState>;
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeStates});

  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class _$InputValidationStateCopyWithImpl<$Res,
        $Val extends InputValidationState>
    implements $InputValidationStateCopyWith<$Res> {
  _$InputValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeStates = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeStates: null == changeStates
          ? _value.changeStates
          : changeStates // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputValidationEntityCopyWith<$Res> get model {
    return $InputValidationEntityCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputVlidationStateImplCopyWith<$Res>
    implements $InputValidationStateCopyWith<$Res> {
  factory _$$InputVlidationStateImplCopyWith(_$InputVlidationStateImpl value,
          $Res Function(_$InputVlidationStateImpl) then) =
      __$$InputVlidationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeStates});

  @override
  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class __$$InputVlidationStateImplCopyWithImpl<$Res>
    extends _$InputValidationStateCopyWithImpl<$Res, _$InputVlidationStateImpl>
    implements _$$InputVlidationStateImplCopyWith<$Res> {
  __$$InputVlidationStateImplCopyWithImpl(_$InputVlidationStateImpl _value,
      $Res Function(_$InputVlidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeStates = null,
  }) {
    return _then(_$InputVlidationStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeStates: null == changeStates
          ? _value.changeStates
          : changeStates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputVlidationStateImpl extends _InputVlidationState {
  const _$InputVlidationStateImpl(
      {required this.model,
      required this.showError,
      required this.changeStates})
      : super._();

  @override
  final InputValidationEntity model;
  @override
  final bool showError;
  @override
  final bool changeStates;

  @override
  String toString() {
    return 'InputValidationState(model: $model, showError: $showError, changeStates: $changeStates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputVlidationStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.changeStates, changeStates) ||
                other.changeStates == changeStates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, showError, changeStates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputVlidationStateImplCopyWith<_$InputVlidationStateImpl> get copyWith =>
      __$$InputVlidationStateImplCopyWithImpl<_$InputVlidationStateImpl>(
          this, _$identity);
}

abstract class _InputVlidationState extends InputValidationState {
  const factory _InputVlidationState(
      {required final InputValidationEntity model,
      required final bool showError,
      required final bool changeStates}) = _$InputVlidationStateImpl;
  const _InputVlidationState._() : super._();

  @override
  InputValidationEntity get model;
  @override
  bool get showError;
  @override
  bool get changeStates;
  @override
  @JsonKey(ignore: true)
  _$$InputVlidationStateImplCopyWith<_$InputVlidationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
