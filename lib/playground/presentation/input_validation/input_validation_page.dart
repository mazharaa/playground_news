import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/commons/widgets/input_text_field.dart';

@RoutePage()
class InputValidationPage extends StatelessWidget {
  const InputValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.router.pop(),
        ),
        title: Text(
          'Input Validation',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: Padding(
        padding: UiHelper.padding(horizontal: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi There!',
              style: context.textTheme.displaySmall?.copyWith(
                color: ColorConst.primary,
              ),
            ),
            Text(
              'Please enter yout name and email :)',
              style: context.textTheme.bodySmall?.copyWith(
                color: ColorConst.grey,
              ),
            ),
            const InputTextField(
              validationText: Text(
                '*',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
