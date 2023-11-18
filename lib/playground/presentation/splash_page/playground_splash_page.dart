import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/routes/app_router.dart';

@RoutePage()
class PlaygroundSplashPage extends StatelessWidget {
  const PlaygroundSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      AutoRouter.of(context).replaceAll(
        [const ChooseSectionRoute()],
      );
    });
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsPath.playgroundSplash),
      ),
    );
  }
}
