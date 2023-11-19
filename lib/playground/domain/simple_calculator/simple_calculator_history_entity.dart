import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground_news/playground/application/simple_calculator_cubit/simple_calculator_cubit.dart';
part 'simple_calculator_history_entity.freezed.dart';

@freezed
class SimpleCalculatorHistoryEntity with _$SimpleCalculatorHistoryEntity {
  const factory SimpleCalculatorHistoryEntity({
    required int id,
    required String leftValue,
    required String rightValue,
    required SimpleCalculatorType type,
  }) = _SimpleCalculatorHistoryEntity;

  const SimpleCalculatorHistoryEntity._();

  factory SimpleCalculatorHistoryEntity.newEntity({
    required String leftValue,
    required String rightValue,
    required SimpleCalculatorType type,
  }) =>
      SimpleCalculatorHistoryEntity(
        id: Random().nextInt(1000),
        leftValue: leftValue,
        rightValue: rightValue,
        type: type,
      );
}
