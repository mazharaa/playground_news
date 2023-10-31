import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.validationText,
    required this.fieldName,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);

  final Text validationText;
  final String fieldName;
  final String hintText;
  final Icon prefixIcon;

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
            validationText,
          ],
        ),
        UiHelper.verticalSpace(5),
        TextField(
          decoration: InputDecoration(
            contentPadding: UiHelper.padding(vertical: 17),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hintText,
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              color: ColorConst.grey,
            ),
            prefixIcon: prefixIcon,
          ),
        )
      ],
    );
  }
}
