import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:playground_news/core/commons/constants.dart';
import 'package:playground_news/pixel_news/infrastructure/common/dtos/api_response_model.dart';
import 'package:playground_news/pixel_news/infrastructure/core/api_configuration.dart';
import 'package:playground_news/pixel_news/infrastructure/core/exception.dart';

@LazySingleton()
class ApiHelper {
  final Dio _dio;
  ApiHelper(this._dio);

  Future<ApiResponseModel> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Map<String, dynamic> _queryParameters = {"api-key": Constants.apiKey};

      if (queryParameters != null) {
        _queryParameters.addAll(queryParameters);
      }

      final Response response = await _dio.get(
        path,
        queryParameters: _queryParameters,
        options: options,
      );

      return ApiConfiguration.handleApiResponse(response);
    } on SocketException {
      return Future.error(NoInternetException());
    } on DioException catch (e) {
      return ApiConfiguration.handleDioErrorResponse(e);
    } catch (e) {
      return Future.error(UnknownException(e));
    }
  }
}
