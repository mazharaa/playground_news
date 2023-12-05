import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/application/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/commons/widgets/action_text.dart';
import 'package:playground_news/presentation/widget/choose_app_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
      child: Padding(
        padding: UiHelper.padding(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: UiHelper.setHeight(25)),
            Text('Setting', style: context.textTheme.displayMedium),
            SizedBox(height: UiHelper.setHeight(25)),
            ActionText(
              title: 'Clear Cache',
              subTitle: 'Reset all of your stats including your favorite',
              onTap: () {},
              needDivider: true,
            ),
            ActionText(
              title: 'Switch App',
              subTitle:
                  'Goes to main home page and choose between playground or Pixels',
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return ListView(
                      padding: UiHelper.padding(top: 25, horizontal: 25),
                      children: const [ChooseAppWidget(showresetButton: true)],
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: UiHelper.borderRadiusCircular(all: 15),
                  ),
                );
              },
              needDivider: true,
            ),
          ],
        ),
      ),
    );
  }
}
