import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:playground_news/application/main_app_cubit/main_app_cubit.dart';
import 'package:playground_news/core/commons/app_theme.dart';
import 'package:playground_news/core/injection/injection.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:playground_news/core/utils/simple_bloc_observer.dart';
import 'package:playground_news/pixel_news/application/favorite/favorite_cubit.dart';
import 'package:playground_news/pixel_news/application/nav_bar/nav_bar_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  Bloc.observer = SimpleBlocObserver();
  configuredInjection();
  runApp(PlaygroundNews());
}

class PlaygroundNews extends StatelessWidget {
  PlaygroundNews({super.key});

  // final _appRouter = AppRouter();
  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainAppCubit(),
        ),
        BlocProvider(
          create: (context) => NavBarCubit(),
        ),
        BlocProvider(
          create: (context) => FavoriteCubit(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: () {
          return MaterialApp.router(
            title: 'Play Ground and Pixel News App',
            theme: AppTheme.theme,
            darkTheme: AppTheme.theme,
            routerDelegate: AutoRouterDelegate(router),
            routeInformationParser: router.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
