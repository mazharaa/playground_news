import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';

@RoutePage()
class HelloWorldSplashPage extends StatelessWidget {
  const HelloWorldSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      AutoRouter.of(context).replaceAll(
        [const HelloWorldRoute()],
      );
    });
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World!',
          style: context.textTheme.displayLarge,
        ),
      ),
    );
  }
}
