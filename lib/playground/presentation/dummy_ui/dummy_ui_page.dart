import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/playground/presentation/choose_section_page/widgets/action_text.dart';
import 'package:playground_news/presentation/commons/widgets/input_text_field.dart';
import 'package:playground_news/presentation/commons/widgets/ui_card.dart';
import 'package:playground_news/playground/presentation/dummy_ui/widgets/ui_square_card.dart';

@RoutePage()
class DummyUiPage extends StatelessWidget {
  const DummyUiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
          ),
          onTap: () => context.router.pop(),
        ),
        title: Text(
          'Dummy UI',
          style: context.textTheme.displayLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UiHelper.padding(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UiHelper.verticalSpace(15),
              ActionText(
                title: 'Next',
                subTitle: 'Tab Bar, GridView, ListView',
                onTap: () => context.router.push(const DummyUiSecondRoute()),
              ),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'CONTAINER AND TEXT',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
                ),
              ),
              const UiCard(),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'COLUMN',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
                ),
              ),
              const UiCard(),
              UiHelper.verticalSpace(15),
              const UiCard(),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'ROW',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UiSquareCard(title: '1st image'),
                  UiSquareCard(title: '2nd image'),
                  UiSquareCard(title: '3rd image'),
                ],
              ),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'BUTTON',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
                ),
              ),
              SizedBox(
                width: UiHelper.setWidth(double.infinity),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Press Me'),
                ),
              ),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'INPUT',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
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
                fieldName: 'Email',
                hintText: 'Enter your email.',
                prefixIcon: Icon(
                  Icons.mail_outline_outlined,
                  color: ColorConst.primary,
                ),
              ),
              Padding(
                padding: UiHelper.padding(vertical: 10),
                child: Text(
                  'IMAGE ASSET, SIZED BOX & EXPANDED',
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: ColorConst.green,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: UiSquareCard(title: 'image'),
                  ),
                  UiHelper.horizontalSpace(15),
                  const UiSquareCard(title: 'image'),
                ],
              ),
              UiHelper.verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
