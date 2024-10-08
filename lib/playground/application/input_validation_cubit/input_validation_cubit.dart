import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:playground_news/playground/domain/input_validation/input_validation_entity.dart';

part 'input_validation_cubit.freezed.dart';
part 'input_validation_state.dart';

class InputValidationCubit extends Cubit<InputValidationState> {
  late TextEditingController nameController;
  late TextEditingController emailController;

  InputValidationCubit() : super(InputValidationState.initial()) {
    nameController = TextEditingController()
      ..addListener(() {
        inputName(nameController.text);
      });

    emailController = TextEditingController()
      ..addListener(() {
        inputEmail(emailController.text);
      });
  }
  void inputName(String val) {
    emit(state.unmodified.copyWith.model(name: val));
  }

  void inputEmail(String val) {
    emit(state.unmodified.copyWith.model(email: val));
  }

  void submit() {
    if (state.model.failureOption.isNone()) {
      emit(state.unmodified.copyWith(changeStates: true));
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }
}
