import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:playground_news/core/env/env.dart';
import 'package:playground_news/core/routes/app_router.dart';
import 'package:dio/dio.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          printTime: true,
          errorMethodCount: 5,
        ),
      );

  @singleton
  AppRouter get appRouter => AppRouter();

  Dio dio(Env env) {
    Dio _dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 6),
      sendTimeout: const Duration(seconds: 6),
      headers: null,
      baseUrl: env.baseUrl,
    );
    _dio.options = options;

    return _dio;
  }
}
