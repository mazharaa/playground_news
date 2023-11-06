// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.fieldName,
    required this.hintText,
    required this.prefixIcon,
    this.validator,
    this.controller,
    this.keyBoardType,
  }) : super(key: key);

  final String fieldName;
  final String hintText;
  final Icon prefixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyBoardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              fieldName,
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
        UiHelper.verticalSpace(5),
        TextFormField(
          keyboardType: keyBoardType,
          controller: controller,
          validator: validator,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            contentPadding: UiHelper.padding(vertical: 17),
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              color: ColorConst.grey,
            ),
            errorStyle: context.textTheme.bodySmall!.copyWith(
              color: ColorConst.red,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorConst.red),
              borderRadius: BorderRadius.circular(10),
            ),
            errorMaxLines: 2,
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorConst.red),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: prefixIcon,
          ),
        )
      ],
    );
  }
}
