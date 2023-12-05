import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground_news/domain/core/form_failure.dart';
import 'package:playground_news/domain/core/form_validator.dart';
import 'package:playground_news/playground/application/simple_calculator_cubit/simple_calculator_cubit.dart';
import 'package:playground_news/playground/domain/simple_calculator/simple_calculator_history_entity.dart';

part 'simple_calculator_entity.freezed.dart';

@freezed
class SimpleCalculatorEntity with _$SimpleCalculatorEntity {
  const factory SimpleCalculatorEntity({
    required double value,
    required String leftForm,
    required String rightForm,
    required SimpleCalculatorType type,
    required List<SimpleCalculatorHistoryEntity> histories,
    required bool isPressed,
  }) = _SimpleCalculatorEntity;

  const SimpleCalculatorEntity._();

  factory SimpleCalculatorEntity.empty() => const SimpleCalculatorEntity(
        value: 0,
        leftForm: "",
        rightForm: "",
        type: SimpleCalculatorType.none(),
        histories: [],
        isPressed: false,
      );

  Option<FormFailure> get failureOption {
    return FormValidator.emptyValidator(leftForm)
        .andThen(() => FormValidator.emptyValidator(rightForm)
            .andThen(() => FormValidator.dividedByZero(rightForm)))
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  String? get emptyLeftErrorMessages {
    return FormValidator.emptyValidator(leftForm).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Left form cannot be empty',
      ),
      (data) => null,
    );
  }

  String? get emptyRightErrorMessages {
    return FormValidator.emptyValidator(rightForm).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Right form cannot be empty',
      ),
      (data) => null,
    );
  }

  String? get dividedByZeroErrorMessage {
    return FormValidator.dividedByZero(rightForm).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        invalidDivider: () => 'Divider cannot be zero (0)',
      ),
      (data) => null,
    );
  }

  SimpleCalculatorHistoryEntity restoreHistory(int id) {
    final history = histories.firstWhere((element) => element.id == id);

    return history;
  }

  List<SimpleCalculatorHistoryEntity> removeHistory(int id) {
    final newHistories = [...histories];

    newHistories.removeWhere((element) => element.id == id);

    return newHistories;
  }

  String get convertValue {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

    final valueSplitted = value.toString().split('.');

    if (valueSplitted[1].length == 1) {
      return value.toString().replaceAll(regex, '');
    }

    return value.toStringAsFixed(2).replaceAll(regex, '');
  }

  List<SimpleCalculatorHistoryEntity> get newHistories {
    final calculationHistory = SimpleCalculatorHistoryEntity.newEntity(
      leftValue: leftForm,
      rightValue: rightForm,
      type: type,
    );

    if (histories.any((element) =>
        element.leftValue == leftForm &&
        element.rightValue == rightForm &&
        element.type == type)) {
      return histories;
    } else {
      return [...histories, calculationHistory];
    }
  }
}
