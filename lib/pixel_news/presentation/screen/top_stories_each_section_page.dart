import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/injection/injection.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/top_stories/top_stories_cubit.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

@RoutePage()
class TopStoriesEachSectionPage extends StatelessWidget {
  final String section;

  const TopStoriesEachSectionPage({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopStoriesCubit>()..getTopStories(section),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios),
            onTap: () {
              context.router.pop();
            },
          ),
          title: Text(
            'Top Stories',
            style: context.textTheme.displayMedium,
          ),
        ),
        body: Padding(
          padding: UiHelper.padding(horizontal: 15, top: 25),
          child: Column(
            children: [
              Padding(
                padding: UiHelper.padding(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SECTION:',
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: ColorConst.darkGrey,
                      ),
                    ),
                    Text(
                      section.toUpperCase(),
                      style: context.textTheme.headlineSmall?.copyWith(
                        color: ColorConst.primary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: UiHelper.setHeight(10)),
              BlocBuilder<TopStoriesCubit, TopStoriesState>(
                builder: (context, state) {
                  return state.failureOrSucceed.fold(
                    () => state.isLoading
                        ? Center(child: UiHelper.loading())
                        : const SizedBox.shrink(),
                    (response) => response.fold(
                      (failure) => failure.when(
                        fromServerSide: (value) => Text(value),
                      ),
                      (response) => Expanded(
                        child: ListView.builder(
                          itemCount: response.length,
                          itemBuilder: (context, index) {
                            final data = response[index];
                            return Padding(
                              padding: UiHelper.padding(bottom: 10),
                              child: NewsCard(
                                title: data.title,
                                desc: data.byline,
                                imgSrc: data.multimediaConverted,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
