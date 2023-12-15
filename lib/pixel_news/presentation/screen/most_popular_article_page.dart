import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_news/core/utils/text_theme_extension.dart';
import 'package:playground_news/core/utils/ui_helper.dart';
import 'package:playground_news/pixel_news/application/favorite/favorite_cubit.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/presentation/widget/news_card.dart';

@RoutePage()
class MostPopularArticlePage extends StatelessWidget {
  final List<ArticleModel> articles;

  const MostPopularArticlePage({super.key, required this.articles});

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
        child: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            return ListView.builder(
              padding: UiHelper.padding(top: 10),
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final data = articles[index];
                return Padding(
                  padding: UiHelper.padding(bottom: 10),
                  child: NewsCard(
                    title: data.title,
                    desc:
                        '${data.byline}  \u2022  ${data.publishedDateConverted}',
                    imgSrc: data.multimediaConverted,
                    isFavorite: state.isFavorite(data),
                    starOnTap: () {
                      context.read<FavoriteCubit>().toggleFavorite(data);
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
