import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

@RoutePage()
class SimpleCalculatorPage extends StatelessWidget {
  const SimpleCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.router.pop(),
        ),
        title: Text(
          'Simple Calculator',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: UiHelper.padding(horizontal: 30, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CHOOSE TYPE',
              style: context.textTheme.headlineMedium?.copyWith(
                color: ColorConst.green,
              ),
            ),
            UiHelper.verticalSpace(10),
            Wrap(
              spacing: UiHelper.setSp(10),
              runSpacing: UiHelper.setSp(7),
              children: const [
                OperationButton(operation: 'Add'),
                OperationButton(operation: 'Substract'),
                OperationButton(operation: 'Multiply'),
                OperationButton(operation: 'Divide'),
              ],
            ),
            UiHelper.verticalSpace(15),
            Text(
              'HISTORY',
              style: context.textTheme.headlineMedium?.copyWith(
                color: ColorConst.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
