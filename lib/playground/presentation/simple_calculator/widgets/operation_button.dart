import 'package:flutter/material.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class OperationButton extends StatelessWidget {
  const OperationButton({
    super.key,
    required this.operation,
  });

  final String operation;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(
          UiHelper.setSp(73),
          UiHelper.setSp(38),
        ),
      ),
      onPressed: () {},
      child: Text(
        operation,
        style: context.textTheme.bodyMedium,
      ),
    );
  }
}
