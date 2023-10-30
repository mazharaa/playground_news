import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/playground/presentation/choose_section_page/widgets/action_text.dart';

@RoutePage()
class ChooseSectionPage extends StatelessWidget {
  const ChooseSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: UiHelper.padding(
            top: 30,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose Section',
                style: context.textTheme.displayLarge,
              ),
              UiHelper.verticalSpace(20.sp),
              ActionText(
                title: 'Dummy UI',
                subTitle:
                    'Pracitce flutter UI and get familiar with UI Widgets',
                onTap: () => context.router.push(const DummyUiRoute()),
              ),
              ActionText(
                title: 'Counter App',
                subTitle:
                    'Increment or decrement an integer based on user input',
                onTap: () => context.router.push(const CounterRoute()),
              ),
              ActionText(
                title: 'Simple Calculator',
                subTitle:
                    'Creating calculator app that consists add, divide, substract, multiply function',
                onTap: () => context.router.push(const SimpleCalculatorRoute()),
              ),
              ActionText(
                title: 'Input Validation',
                subTitle: 'Play around with email input & password input',
                onTap: () => context.router.push(const InputValidationRoute()),
              ),
              ActionText(
                title: 'Switch App',
                subTitle:
                    'Goes to main home page and choose between Playground and Pixels',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
