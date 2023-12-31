import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/injection/injection.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/favorite/favorite_cubit.dart';
import 'package:playground_news/pixel_news/application/most_popular/most_popular_cubit.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late List<ArticleModel> articles;
    return BlocProvider(
      create: (context) => getIt<MostPopularCubit>(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UiHelper.padding(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: UiHelper.setHeight(25)),
                SvgPicture.asset(AssetsPath.pixelNewsLogo),
                SizedBox(height: UiHelper.setHeight(25)),
                Text(
                  'Top Stories',
                  style: context.textTheme.displayMedium,
                ),
                Text(
                  'Top stories from all time',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: ColorConst.darkGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: UiHelper.setHeight(15)),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: Size.fromHeight(UiHelper.setHeight(40)),
              shape: RoundedRectangleBorder(
                borderRadius: UiHelper.borderRadiusCircular(all: 8),
              ),
              side: const BorderSide(
                color: ColorConst.primary,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            onPressed: () {
              context.router.push(const TopStoriesRoute());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Go To Categories Section',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: ColorConst.primary,
                  ),
                ),
                const Icon(Icons.keyboard_double_arrow_right_rounded)
              ],
            ),
          ),
          SizedBox(height: UiHelper.setHeight(25)),
          Padding(
            padding: UiHelper.padding(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Most Popular Article',
                      style: context.textTheme.displayMedium,
                    ),
                    GestureDetector(
                      child: Text(
                        'See All',
                        style: context.textTheme.displayMedium?.copyWith(
                          color: ColorConst.primary,
                        ),
                      ),
                      onTap: () {
                        context.router
                            .push(MostPopularArticleRoute(articles: articles));
                      },
                    )
                  ],
                ),
                Text(
                  'Top Articles from last week',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: ColorConst.darkGrey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: UiHelper.setHeight(15)),
          Builder(
            builder: (context) {
              final mostPopularState = context.watch<MostPopularCubit>().state;
              final favoriteState = context.watch<FavoriteCubit>().state;
              return mostPopularState.failureOrSucceed.fold(
                () => mostPopularState.isLoading
                    ? Center(child: UiHelper.loading())
                    : const SizedBox.shrink(),
                (response) => response.fold(
                  (failure) => failure.when(
                    fromServerSide: (value) => Text(value),
                  ),
                  (response) => Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        articles = response;
                        final data = response[index];
                        return Padding(
                          padding: UiHelper.padding(bottom: 10),
                          child: NewsCard(
                            title: data.title,
                            desc:
                                '${data.byline}  \u2022  ${data.publishedDateConverted}',
                            imgSrc: data.multimediaConverted,
                            isFavorite: favoriteState.isFavorite(data),
                            starOnTap: () {
                              context
                                  .read<FavoriteCubit>()
                                  .toggleFavorite(data);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
