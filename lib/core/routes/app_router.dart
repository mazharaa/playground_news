import 'package:auto_route/auto_route.dart';
import 'package:playground_news/playground/presentation/choose_section_page/choose_section_page.dart';
import 'package:playground_news/playground/presentation/counter_page/counter_page.dart';
import 'package:playground_news/playground/presentation/dummy_ui/dummy_ui_page.dart';
import 'package:playground_news/playground/presentation/dummy_ui/dummy_ui_second_page.dart';
import 'package:playground_news/playground/presentation/input_validation/input_validation_page.dart';
import 'package:playground_news/playground/presentation/simple_calculator/simple_calculator_page.dart';
import 'package:playground_news/presentation/main_page.dart';
import 'package:playground_news/presentation/splash/pixel_news_splash_page.dart';
import 'package:playground_news/presentation/splash/playground_splash_page.dart';

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
        AutoRoute(page: PixelNewsSplashRoute.page),
        AutoRoute(page: PlaygroundSplashRoute.page),
      ];
}
