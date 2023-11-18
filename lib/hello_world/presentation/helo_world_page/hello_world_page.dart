import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/widget/choose_app_button.dart';
import 'package:playground_news/presentation/widget/choose_app_widget.dart';

@RoutePage()
class HelloWorldPage extends StatelessWidget {
  const HelloWorldPage({super.key});

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
          playGround: () {
            AutoRouter.of(context).replaceAll([const PlaygroundSplashRoute()]);
          },
          helloWorld: () {},
        );
      },
      child: Scaffold(
        body: Padding(
          padding: UiHelper.padding(top: 45, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello World',
                style: context.textTheme.displayLarge,
              ),
              UiHelper.verticalSpace(15),
              ChooseAppButton(
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
                child: Row(
                  children: [
                    SvgPicture.asset(AssetsPath.restartIcon),
                    UiHelper.horizontalSpace(10),
                    Text(
                      'Switch App',
                      style: context.textTheme.titleMedium,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
