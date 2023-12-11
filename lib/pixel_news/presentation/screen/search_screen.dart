import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/commons/constants.dart';
import 'package:playground_news/core/injection/injection.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/explore/explore_cubit.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sortType = Constants.articleSortType;
    final controller = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<ExploreCubit>(),
      child: BlocBuilder<ExploreCubit, ExploreState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: UiHelper.setHeight(25)),
              Padding(
                padding: UiHelper.padding(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Explore', style: context.textTheme.displayMedium),
                    Text(
                      'Reset',
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: ColorConst.primary,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: UiHelper.setHeight(20)),
              TextField(
                controller: controller,
                style: context.textTheme.titleMedium,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.search, color: ColorConst.primary),
                  hintText: 'Search articles...',
                  hintStyle: context.textTheme.bodySmall?.copyWith(
                    color: ColorConst.darkGrey,
                  ),
                  isDense: true,
                  contentPadding: UiHelper.padding(vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 5,
                    ),
                  ),
                ),
                onSubmitted: (value) =>
                    context.read<ExploreCubit>().exploreArticles(
                          value,
                          'newest',
                        ),
              ),
              SizedBox(height: UiHelper.setHeight(15)),
              Padding(
                padding: UiHelper.padding(horizontal: 7),
                child: Row(
                  children: List.generate(sortType.length, (index) {
                    return Row(
                      children: [
                        GestureDetector(
                          child: Text(
                            sortType[index].toUpperCase(),
                            style: context.textTheme.headlineSmall?.copyWith(
                              color: state.sortType == sortType[index]
                                  ? ColorConst.primary
                                  : ColorConst.grey,
                            ),
                          ),
                          onTap: () {
                            context.read<ExploreCubit>().exploreArticles(
                                  controller.text,
                                  sortType[index],
                                );
                          },
                        ),
                        SizedBox(width: UiHelper.setWidth(10)),
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(height: UiHelper.setHeight(15)),
              state.failureOrSucceed.fold(
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
              )
            ],
          );
        },
      ),
    );
  }
}
