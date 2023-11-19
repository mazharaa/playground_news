part of 'simple_calculator_cubit.dart';

@freezed
class SimpleCalculatorState with _$SimpleCalculatorState {
  const factory SimpleCalculatorState({
    required SimpleCalculatorEntity model,
    required bool showError,
  }) = _SimpleCalculatorState;

  const SimpleCalculatorState._();

  factory SimpleCalculatorState.initial() => SimpleCalculatorState(
        model: SimpleCalculatorEntity.empty(),
        showError: false,
      );

  SimpleCalculatorState get unmodified =>
      copyWith(model: model.copyWith(isPressed: false));

  bool choosenType(SimpleCalculatorType type) {
    return type == model.type;
  }

  bool get typeNotChoosen => model.type == const SimpleCalculatorType.none();

  String get displayValue => !model.isPressed ? '...' : model.convertValue;

  String? get showErrorMsg {
    if (!showError) return null;

    if (model.emptyLeftErrorMessages == null) {
      return model.emptyRightErrorMessages;
    }

    return model.emptyLeftErrorMessages;
  }

  String equationText(SimpleCalculatorType type) {
    return type.when(
      none: () => '',
      add: () => '+',
      substract: () => '-',
      multiply: () => 'X',
      divide: () => '/',
    );
  }

  String historyText(SimpleCalculatorHistoryEntity entity) {
    final equation = equationText(entity.type);

    return '${entity.leftValue} $equation ${entity.rightValue}';
  }
}

@freezed
class SimpleCalculatorType with _$SimpleCalculatorType {
  const factory SimpleCalculatorType.none() = _None;
  const factory SimpleCalculatorType.add() = _Add;
  const factory SimpleCalculatorType.substract() = _Substract;
  const factory SimpleCalculatorType.multiply() = _Multiply;
  const factory SimpleCalculatorType.divide() = _Divide;
}
