import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/most_popular/most_popular_cubit.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

@RoutePage()
class MostPopularArticlePage extends StatelessWidget {
  const MostPopularArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Most Popular Articles',
          style: context.textTheme.displayMedium,
        ),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () => context.router.pop(),
        ),
      ),
      body: Padding(
          padding: UiHelper.padding(horizontal: 15),
          child: BlocBuilder<MostPopularCubit, MostPopularState>(
            builder: (context, state) {
              return state.failureOrSucceed.fold(
                () => state.isLoading
                    ? UiHelper.loading()
                    : const SizedBox.shrink(),
                (response) => response.fold(
                  (failure) => failure.when(
                    fromServerSide: (value) => Text(value),
                  ),
                  (response) => Expanded(
                    child: ListView.builder(
                      padding: UiHelper.padding(top: 10),
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
          )),
    );
  }
}
