import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground_news/playground/domain/simple_calculator/simple_calculator_entity.dart';
import 'package:playground_news/playground/domain/simple_calculator/simple_calculator_history_entity.dart';

part 'simple_calculator_cubit.freezed.dart';
part 'simple_calculator_state.dart';

class SimpleCalculatorCubit extends Cubit<SimpleCalculatorState> {
  late TextEditingController leftController;
  late TextEditingController rightController;

  SimpleCalculatorCubit() : super(SimpleCalculatorState.initial()) {
    leftController = TextEditingController()
      ..addListener(onLeftControllerChange);
    rightController = TextEditingController()
      ..addListener(onRightControllerChange);
  }

  void onLeftControllerChange() {
    inputLeftForm(leftController.text);
  }

  onRightControllerChange() {
    inputRightForm(rightController.text);
  }

  void inputLeftForm(String val) {
    emit(state.unmodified.copyWith.model(leftForm: val));
  }

  void inputRightForm(String val) {
    emit(state.unmodified.copyWith.model(rightForm: val));
  }

  void chooseType(SimpleCalculatorType type) {
    emit(state.unmodified.copyWith.model(type: type));
  }

  void addValue() {
    if (state.model.failureOption.isNone()) {
      final value = double.parse(leftController.text) +
          double.parse(rightController.text);
      saveToHistories(value);
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void substractValue() {
    if (state.model.failureOption.isNone()) {
      final value = double.parse(leftController.text) -
          double.parse(rightController.text);
      saveToHistories(value);
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void multiplyValue() {
    if (state.model.failureOption.isNone()) {
      final value = double.parse(leftController.text) *
          double.parse(rightController.text);
      saveToHistories(value);
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void divideValue() {
    if (state.model.failureOption.isNone()) {
      final value = double.parse(leftController.text) /
          double.parse(rightController.text);
      saveToHistories(value);
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void powerValue() {
    if (state.model.failureOption.isNone()) {
      final value = pow(double.parse(leftController.text),
          double.parse(rightController.text));
      saveToHistories(value.toDouble());
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void restoreHistory(int id) {
    final entity = state.model.restoreHistory(id);

    leftController.removeListener(onLeftControllerChange);
    rightController.removeListener(onRightControllerChange);

    leftController.value = TextEditingValue(text: entity.leftValue);
    rightController.value = TextEditingValue(text: entity.rightValue);

    leftController.addListener(onLeftControllerChange);
    rightController.addListener(onRightControllerChange);

    emit(
      state.unmodified.copyWith.model(
        leftForm: entity.leftValue.toString(),
        rightForm: entity.rightValue.toString(),
        type: entity.type,
        histories: state.model.removeHistory(id),
      ),
    );
  }

  void saveToHistories(double value) {
    emit(state.unmodified.copyWith.model(
      histories: state.model.newHistories,
      value: value,
      isPressed: true,
    ));
  }
}
