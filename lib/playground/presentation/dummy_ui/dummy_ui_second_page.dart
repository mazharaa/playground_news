import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/commons/widgets/ui_card.dart';
import 'package:playground_news/playground/presentation/dummy_ui/widgets/ui_square_card.dart';

@RoutePage()
class DummyUiSecondPage extends StatelessWidget {
  const DummyUiSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: GestureDetector(
              onTap: () => context.router.pop(),
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
            onTap: () {},
          ),
          title: Text(
            'Dummy UI',
            style: context.textTheme.displayLarge,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'ListView',
              ),
              Tab(
                text: 'GridView',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: UiHelper.padding(left: 15),
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    UiHelper.verticalSpace(15),
                    const UiCard(),
                  ],
                );
              },
            ),
            GridView.builder(
              itemCount: 8,
              padding: UiHelper.padding(left: 15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UiHelper.verticalSpace(15),
                    const Expanded(child: UiSquareCard(title: 'image')),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
