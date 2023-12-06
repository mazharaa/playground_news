import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/commons/constants.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/presentation/widget/choose_button.dart';

@RoutePage()
class TopStoriesPage extends StatelessWidget {
  const TopStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final section = Constants.chooseSectionForStories;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.router.pop(),
        ),
        title: Text('Top Stories', style: context.textTheme.displayMedium),
      ),
      body: Padding(
        padding: UiHelper.padding(horizontal: 20, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CHOOSE SECTION',
              style: context.textTheme.headlineSmall
                  ?.copyWith(color: ColorConst.green),
            ),
            SizedBox(height: UiHelper.setHeight(10)),
            Wrap(
              spacing: UiHelper.setSp(10),
              runSpacing: UiHelper.setSp(7),
              children: List.generate(
                section.length,
                (index) {
                  return ChooseButton(
                    title: section[index],
                    isChoosen: false,
                    onPressed: () {
                      context.router.push(
                          TopStoriesEachSectionRoute(section: section[index]));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
