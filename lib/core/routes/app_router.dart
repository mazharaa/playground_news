import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:playground_news/hello_world/presentation/splash_page/hello_world_splash_page.dart';
import 'package:playground_news/pixel_news/domain/common/dtos/article_model.dart';
import 'package:playground_news/pixel_news/presentation/pixel_news_main_page.dart';
import 'package:playground_news/pixel_news/presentation/screen/most_popular_article_page.dart';
import 'package:playground_news/pixel_news/presentation/screen/top_stories_each_section_page.dart';
import 'package:playground_news/pixel_news/presentation/screen/top_stories_page.dart';
import 'package:playground_news/pixel_news/presentation/splash_page/pixel_news_splash_page.dart';
import 'package:playground_news/playground/presentation/choose_section_page/choose_section_page.dart';
import 'package:playground_news/playground/presentation/counter_page/counter_page.dart';
import 'package:playground_news/playground/presentation/dummy_ui/dummy_ui_page.dart';
import 'package:playground_news/playground/presentation/dummy_ui/dummy_ui_second_page.dart';
import 'package:playground_news/playground/presentation/input_validation/input_validation_page.dart';
import 'package:playground_news/playground/presentation/simple_calculator/simple_calculator_page.dart';
import 'package:playground_news/hello_world/presentation/helo_world_page/hello_world_page.dart';
import 'package:playground_news/presentation/main_page/main_page.dart';
import 'package:playground_news/playground/presentation/splash_page/playground_splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true),
        AutoRoute(page: ChooseSectionRoute.page),
        AutoRoute(page: DummyUiRoute.page),
        AutoRoute(page: DummyUiSecondRoute.page),
        AutoRoute(page: CounterRoute.page),
        AutoRoute(page: SimpleCalculatorRoute.page),
        AutoRoute(page: InputValidationRoute.page),
        AutoRoute(page: PlaygroundSplashRoute.page),
        AutoRoute(page: HelloWorldSplashRoute.page),
        AutoRoute(page: HelloWorldRoute.page),
        AutoRoute(page: PixelNewsSplashRoute.page),
        AutoRoute(page: PixelNewsMainRoute.page),
        AutoRoute(page: MostPopularArticleRoute.page),
        AutoRoute(page: TopStoriesRoute.page),
        AutoRoute(page: TopStoriesEachSectionRoute.page),
      ];
}
