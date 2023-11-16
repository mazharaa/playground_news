import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/routes/app_router.dart';

@RoutePage()
class PlaygroundSplashPage extends StatefulWidget {
  const PlaygroundSplashPage({super.key});

  @override
  State<PlaygroundSplashPage> createState() => _PlaygroundSplashPageState();
}

class _PlaygroundSplashPageState extends State<PlaygroundSplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        AutoRouter.of(context).replaceAll(
          [const ChooseSectionRoute()],
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AssetsPath.playgroundSplash),
      ),
    );
  }
}
