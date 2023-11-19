// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleCalculatorState {
  SimpleCalculatorEntity get model => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleCalculatorStateCopyWith<SimpleCalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCalculatorStateCopyWith<$Res> {
  factory $SimpleCalculatorStateCopyWith(SimpleCalculatorState value,
          $Res Function(SimpleCalculatorState) then) =
      _$SimpleCalculatorStateCopyWithImpl<$Res, SimpleCalculatorState>;
  @useResult
  $Res call({SimpleCalculatorEntity model, bool showError});

  $SimpleCalculatorEntityCopyWith<$Res> get model;
}

/// @nodoc
class _$SimpleCalculatorStateCopyWithImpl<$Res,
        $Val extends SimpleCalculatorState>
    implements $SimpleCalculatorStateCopyWith<$Res> {
  _$SimpleCalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleCalculatorEntityCopyWith<$Res> get model {
    return $SimpleCalculatorEntityCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimpleCalculatorStateImplCopyWith<$Res>
    implements $SimpleCalculatorStateCopyWith<$Res> {
  factory _$$SimpleCalculatorStateImplCopyWith(
          _$SimpleCalculatorStateImpl value,
          $Res Function(_$SimpleCalculatorStateImpl) then) =
      __$$SimpleCalculatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimpleCalculatorEntity model, bool showError});

  @override
  $SimpleCalculatorEntityCopyWith<$Res> get model;
}

/// @nodoc
class __$$SimpleCalculatorStateImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorStateCopyWithImpl<$Res,
        _$SimpleCalculatorStateImpl>
    implements _$$SimpleCalculatorStateImplCopyWith<$Res> {
  __$$SimpleCalculatorStateImplCopyWithImpl(_$SimpleCalculatorStateImpl _value,
      $Res Function(_$SimpleCalculatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
  }) {
    return _then(_$SimpleCalculatorStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SimpleCalculatorEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SimpleCalculatorStateImpl extends _SimpleCalculatorState {
  const _$SimpleCalculatorStateImpl(
      {required this.model, required this.showError})
      : super._();

  @override
  final SimpleCalculatorEntity model;
  @override
  final bool showError;

  @override
  String toString() {
    return 'SimpleCalculatorState(model: $model, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCalculatorStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.showError, showError) ||
                other.showError == showError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, showError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCalculatorStateImplCopyWith<_$SimpleCalculatorStateImpl>
      get copyWith => __$$SimpleCalculatorStateImplCopyWithImpl<
          _$SimpleCalculatorStateImpl>(this, _$identity);
}

abstract class _SimpleCalculatorState extends SimpleCalculatorState {
  const factory _SimpleCalculatorState(
      {required final SimpleCalculatorEntity model,
      required final bool showError}) = _$SimpleCalculatorStateImpl;
  const _SimpleCalculatorState._() : super._();

  @override
  SimpleCalculatorEntity get model;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$$SimpleCalculatorStateImplCopyWith<_$SimpleCalculatorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimpleCalculatorType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCalculatorTypeCopyWith<$Res> {
  factory $SimpleCalculatorTypeCopyWith(SimpleCalculatorType value,
          $Res Function(SimpleCalculatorType) then) =
      _$SimpleCalculatorTypeCopyWithImpl<$Res, SimpleCalculatorType>;
}

/// @nodoc
class _$SimpleCalculatorTypeCopyWithImpl<$Res,
        $Val extends SimpleCalculatorType>
    implements $SimpleCalculatorTypeCopyWith<$Res> {
  _$SimpleCalculatorTypeCopyWithImpl(this._value, this._then);

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
    extends _$SimpleCalculatorTypeCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'SimpleCalculatorType.none()';
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
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
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
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements SimpleCalculatorType {
  const factory _None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorTypeCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl();

  @override
  String toString() {
    return 'SimpleCalculatorType.add()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) {
    return add();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) {
    return add?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements SimpleCalculatorType {
  const factory _Add() = _$AddImpl;
}

/// @nodoc
abstract class _$$SubstractImplCopyWith<$Res> {
  factory _$$SubstractImplCopyWith(
          _$SubstractImpl value, $Res Function(_$SubstractImpl) then) =
      __$$SubstractImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubstractImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorTypeCopyWithImpl<$Res, _$SubstractImpl>
    implements _$$SubstractImplCopyWith<$Res> {
  __$$SubstractImplCopyWithImpl(
      _$SubstractImpl _value, $Res Function(_$SubstractImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubstractImpl implements _Substract {
  const _$SubstractImpl();

  @override
  String toString() {
    return 'SimpleCalculatorType.substract()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubstractImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) {
    return substract();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) {
    return substract?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
    required TResult orElse(),
  }) {
    if (substract != null) {
      return substract();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) {
    return substract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) {
    return substract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) {
    if (substract != null) {
      return substract(this);
    }
    return orElse();
  }
}

abstract class _Substract implements SimpleCalculatorType {
  const factory _Substract() = _$SubstractImpl;
}

/// @nodoc
abstract class _$$MultiplyImplCopyWith<$Res> {
  factory _$$MultiplyImplCopyWith(
          _$MultiplyImpl value, $Res Function(_$MultiplyImpl) then) =
      __$$MultiplyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MultiplyImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorTypeCopyWithImpl<$Res, _$MultiplyImpl>
    implements _$$MultiplyImplCopyWith<$Res> {
  __$$MultiplyImplCopyWithImpl(
      _$MultiplyImpl _value, $Res Function(_$MultiplyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MultiplyImpl implements _Multiply {
  const _$MultiplyImpl();

  @override
  String toString() {
    return 'SimpleCalculatorType.multiply()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MultiplyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) {
    return multiply();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) {
    return multiply?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) {
    return multiply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) {
    return multiply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) {
    if (multiply != null) {
      return multiply(this);
    }
    return orElse();
  }
}

abstract class _Multiply implements SimpleCalculatorType {
  const factory _Multiply() = _$MultiplyImpl;
}

/// @nodoc
abstract class _$$DivideImplCopyWith<$Res> {
  factory _$$DivideImplCopyWith(
          _$DivideImpl value, $Res Function(_$DivideImpl) then) =
      __$$DivideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DivideImplCopyWithImpl<$Res>
    extends _$SimpleCalculatorTypeCopyWithImpl<$Res, _$DivideImpl>
    implements _$$DivideImplCopyWith<$Res> {
  __$$DivideImplCopyWithImpl(
      _$DivideImpl _value, $Res Function(_$DivideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DivideImpl implements _Divide {
  const _$DivideImpl();

  @override
  String toString() {
    return 'SimpleCalculatorType.divide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DivideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() add,
    required TResult Function() substract,
    required TResult Function() multiply,
    required TResult Function() divide,
  }) {
    return divide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? add,
    TResult? Function()? substract,
    TResult? Function()? multiply,
    TResult? Function()? divide,
  }) {
    return divide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? add,
    TResult Function()? substract,
    TResult Function()? multiply,
    TResult Function()? divide,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Add value) add,
    required TResult Function(_Substract value) substract,
    required TResult Function(_Multiply value) multiply,
    required TResult Function(_Divide value) divide,
  }) {
    return divide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Add value)? add,
    TResult? Function(_Substract value)? substract,
    TResult? Function(_Multiply value)? multiply,
    TResult? Function(_Divide value)? divide,
  }) {
    return divide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Add value)? add,
    TResult Function(_Substract value)? substract,
    TResult Function(_Multiply value)? multiply,
    TResult Function(_Divide value)? divide,
    required TResult orElse(),
  }) {
    if (divide != null) {
      return divide(this);
    }
    return orElse();
  }
}

abstract class _Divide implements SimpleCalculatorType {
  const factory _Divide() = _$DivideImpl;
}
