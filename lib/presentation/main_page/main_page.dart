import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/widget/choose_app_widget.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration.zero,
      () {
        context.read<MainAppCubit>().state.type.when(
              none: () {},
              pixelNews: () {
                AutoRouter.of(context).replaceAll(
                  [const PixelNewsSplashRoute()],
                );
              },
              playGround: () {
                AutoRouter.of(context).replaceAll(
                  [const PlaygroundSplashRoute()],
                );
              },
              helloWorld: () {
                AutoRouter.of(context).replaceAll(
                  [const HelloWorldSplashRoute()],
                );
              },
            );
      },
    );
    return BlocListener<MainAppCubit, MainAppState>(
      listener: (context, state) {
        state.type.when(
          none: () {},
          pixelNews: () {
            AutoRouter.of(context).replaceAll(
              [const PixelNewsSplashRoute()],
            );
          },
          playGround: () {
            AutoRouter.of(context).replaceAll(
              [const PlaygroundSplashRoute()],
            );
          },
          helloWorld: () {
            AutoRouter.of(context).replaceAll(
              [const HelloWorldSplashRoute()],
            );
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: UiHelper.padding(top: 35, horizontal: 15),
            child: const ChooseAppWidget(),
          ),
        ),
      ),
    );
  }
}
