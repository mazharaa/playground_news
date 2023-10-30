import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.validationText,
  }) : super(key: key);

  final Text validationText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                'Email',
                style: context.textTheme.headlineMedium,
              ),
              validationText,
            ],
          ),
        ),
        TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: 'Enter your email.',
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              color: ColorConst.grey,
            ),
            prefixIcon: const Icon(
              Icons.mail_outline,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
