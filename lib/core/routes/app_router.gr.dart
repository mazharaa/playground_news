// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChooseSectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChooseSectionPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CounterPage(),
      );
    },
    DummyUiRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DummyUiPage(),
      );
    },
    DummyUiSecondRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DummyUiSecondPage(),
      );
    },
    HelloWorldRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HelloWorldPage(),
      );
    },
    HelloWorldSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HelloWorldSplashPage(),
      );
    },
    InputValidationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InputValidationPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    MostPopularArticleRoute.name: (routeData) {
      final args = routeData.argsAs<MostPopularArticleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MostPopularArticlePage(
          key: args.key,
          articles: args.articles,
        ),
      );
    },
    PixelNewsMainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PixelNewsMainPage(),
      );
    },
    PixelNewsSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PixelNewsSplashPage(),
      );
    },
    PlaygroundSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlaygroundSplashPage(),
      );
    },
    SimpleCalculatorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SimpleCalculatorPage(),
      );
    },
    TopStoriesEachSectionRoute.name: (routeData) {
      final args = routeData.argsAs<TopStoriesEachSectionRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TopStoriesEachSectionPage(
          key: args.key,
          section: args.section,
        ),
      );
    },
    TopStoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopStoriesPage(),
      );
    },
  };
}

/// generated route for
/// [ChooseSectionPage]
class ChooseSectionRoute extends PageRouteInfo<void> {
  const ChooseSectionRoute({List<PageRouteInfo>? children})
      : super(
          ChooseSectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChooseSectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CounterPage]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute({List<PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DummyUiPage]
class DummyUiRoute extends PageRouteInfo<void> {
  const DummyUiRoute({List<PageRouteInfo>? children})
      : super(
          DummyUiRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DummyUiSecondPage]
class DummyUiSecondRoute extends PageRouteInfo<void> {
  const DummyUiSecondRoute({List<PageRouteInfo>? children})
      : super(
          DummyUiSecondRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUiSecondRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HelloWorldPage]
class HelloWorldRoute extends PageRouteInfo<void> {
  const HelloWorldRoute({List<PageRouteInfo>? children})
      : super(
          HelloWorldRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelloWorldRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HelloWorldSplashPage]
class HelloWorldSplashRoute extends PageRouteInfo<void> {
  const HelloWorldSplashRoute({List<PageRouteInfo>? children})
      : super(
          HelloWorldSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelloWorldSplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InputValidationPage]
class InputValidationRoute extends PageRouteInfo<void> {
  const InputValidationRoute({List<PageRouteInfo>? children})
      : super(
          InputValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputValidationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MostPopularArticlePage]
class MostPopularArticleRoute
    extends PageRouteInfo<MostPopularArticleRouteArgs> {
  MostPopularArticleRoute({
    Key? key,
    required List<ArticleModel> articles,
    List<PageRouteInfo>? children,
  }) : super(
          MostPopularArticleRoute.name,
          args: MostPopularArticleRouteArgs(
            key: key,
            articles: articles,
          ),
          initialChildren: children,
        );

  static const String name = 'MostPopularArticleRoute';

  static const PageInfo<MostPopularArticleRouteArgs> page =
      PageInfo<MostPopularArticleRouteArgs>(name);
}

class MostPopularArticleRouteArgs {
  const MostPopularArticleRouteArgs({
    this.key,
    required this.articles,
  });

  final Key? key;

  final List<ArticleModel> articles;

  @override
  String toString() {
    return 'MostPopularArticleRouteArgs{key: $key, articles: $articles}';
  }
}

/// generated route for
/// [PixelNewsMainPage]
class PixelNewsMainRoute extends PageRouteInfo<void> {
  const PixelNewsMainRoute({List<PageRouteInfo>? children})
      : super(
          PixelNewsMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'PixelNewsMainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PixelNewsSplashPage]
class PixelNewsSplashRoute extends PageRouteInfo<void> {
  const PixelNewsSplashRoute({List<PageRouteInfo>? children})
      : super(
          PixelNewsSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'PixelNewsSplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlaygroundSplashPage]
class PlaygroundSplashRoute extends PageRouteInfo<void> {
  const PlaygroundSplashRoute({List<PageRouteInfo>? children})
      : super(
          PlaygroundSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaygroundSplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SimpleCalculatorPage]
class SimpleCalculatorRoute extends PageRouteInfo<void> {
  const SimpleCalculatorRoute({List<PageRouteInfo>? children})
      : super(
          SimpleCalculatorRoute.name,
          initialChildren: children,
        );

  static const String name = 'SimpleCalculatorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopStoriesEachSectionPage]
class TopStoriesEachSectionRoute
    extends PageRouteInfo<TopStoriesEachSectionRouteArgs> {
  TopStoriesEachSectionRoute({
    Key? key,
    required String section,
    List<PageRouteInfo>? children,
  }) : super(
          TopStoriesEachSectionRoute.name,
          args: TopStoriesEachSectionRouteArgs(
            key: key,
            section: section,
          ),
          initialChildren: children,
        );

  static const String name = 'TopStoriesEachSectionRoute';

  static const PageInfo<TopStoriesEachSectionRouteArgs> page =
      PageInfo<TopStoriesEachSectionRouteArgs>(name);
}

class TopStoriesEachSectionRouteArgs {
  const TopStoriesEachSectionRouteArgs({
    this.key,
    required this.section,
  });

  final Key? key;

  final String section;

  @override
  String toString() {
    return 'TopStoriesEachSectionRouteArgs{key: $key, section: $section}';
  }
}

/// generated route for
/// [TopStoriesPage]
class TopStoriesRoute extends PageRouteInfo<void> {
  const TopStoriesRoute({List<PageRouteInfo>? children})
      : super(
          TopStoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopStoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
