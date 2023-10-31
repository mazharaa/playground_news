import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_news/core/commons/app_theme.dart';
import 'package:playground_news/core/routes/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () {
        return MaterialApp.router(
          title: 'Play Ground and Pixel News App',
          theme: AppTheme.theme,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
