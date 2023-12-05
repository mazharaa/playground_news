import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_news/application/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/commons/widgets/action_text.dart';
import 'package:playground_news/presentation/widget/choose_app_widget.dart';

@RoutePage()
class ChooseSectionPage extends StatelessWidget {
  const ChooseSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainAppCubit, MainAppState>(
      listener: (context, state) {
        state.type.when(
          none: () {
            AutoRouter.of(context).replaceAll([const MainRoute()]);
          },
          pixelNews: () {
            AutoRouter.of(context).replaceAll([const PixelNewsSplashRoute()]);
          },
          playGround: () {},
          helloWorld: () {
            AutoRouter.of(context).replaceAll([const HelloWorldSplashRoute()]);
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
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
                    onTap: () =>
                        context.router.push(const SimpleCalculatorRoute()),
                  ),
                  ActionText(
                    title: 'Input Validation',
                    subTitle: 'Play around with email input & password input',
                    onTap: () =>
                        context.router.push(const InputValidationRoute()),
                  ),
                  ActionText(
                    title: 'Switch App',
                    subTitle:
                        'Goes to main home page and choose between Playground and Pixels',
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ListView(
                            padding: UiHelper.padding(top: 25, horizontal: 25),
                            children: const [
                              ChooseAppWidget(showresetButton: true)
                            ],
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: UiHelper.borderRadiusCircular(all: 15),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
