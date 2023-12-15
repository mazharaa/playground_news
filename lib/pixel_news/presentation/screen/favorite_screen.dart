import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/commons/assets_path.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/favorite/favorite_cubit.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: UiHelper.setHeight(25)),
        Padding(
          padding: UiHelper.padding(horizontal: 5),
          child: Text('Favorites', style: context.textTheme.displayMedium),
        ),
        SizedBox(height: UiHelper.setHeight(15)),
        BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            return Expanded(
              child: state.favoritedNews.isEmpty
                  ? Center(
                      child: Padding(
                        padding: UiHelper.padding(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AssetsPath.boxEmpty),
                            SizedBox(
                              height: UiHelper.setHeight(20),
                            ),
                            Text(
                              'No Results',
                              style: context.textTheme.displaySmall?.copyWith(
                                color: ColorConst.primary,
                              ),
                            ),
                            Text(
                              'Goes to Pixles home page and favorite some of the articles!',
                              style: context.textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.favoritedNews.length,
                      itemBuilder: (context, index) {
                        final data = state.favoritedNews[index];
                        return Padding(
                          padding: UiHelper.padding(bottom: 10),
                          child: NewsCard(
                            title: data.title,
                            desc:
                                '${data.byline}  \u2022  ${data.publishedDateConverted}',
                            imgSrc: data.multimediaConverted,
                            isFavorite: state.isFavorite(data),
                            starOnTap: () {
                              context
                                  .read<FavoriteCubit>()
                                  .toggleFavorite(data);
                            },
                          ),
                        );
                      },
                    ),
            );
          },
        )
      ],
    );
  }
}
