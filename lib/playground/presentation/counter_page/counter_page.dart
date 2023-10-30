import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => context.router.pop(),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Counter App',
          style: context.textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          UiHelper.verticalSpace(10),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '0',
          style: context.textTheme.displayLarge,
        ),
      ),
    );
  }
}