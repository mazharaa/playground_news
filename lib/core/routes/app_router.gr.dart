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
    SimpleCalculatorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SimpleCalculatorPage(),
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
