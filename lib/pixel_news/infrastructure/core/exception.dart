import 'package:playground_news/pixel_news/infrastructure/common/dtos/api_response_model.dart';

class ApiResponseException implements Exception {
  final ApiResponseModel model;
  final String message;

  ApiResponseException(this.model, this.message);
  @override
  String toString() => "$message ${model.errorMsg}";
}

class BadRequestException extends ApiResponseException {
  BadRequestException(ApiResponseModel model) : super(model, "");
}

class UnauthorizedException extends ApiResponseException {
  UnauthorizedException(ApiResponseModel model) : super(model, "");
}

class NotFoundException extends ApiResponseException {
  NotFoundException(ApiResponseModel model) : super(model, "");
}

class ForbiddenException extends ApiResponseException {
  ForbiddenException(ApiResponseModel model) : super(model, "");
}

class PreConditionException extends ApiResponseException {
  PreConditionException(ApiResponseModel model) : super(model, "Error: ");
  @override
  String toString() => model.errorMsg;
}

class RequestRateLimitException extends ApiResponseException {
  RequestRateLimitException(ApiResponseModel model) : super(model, "");
}

class UnprocessableEntityException extends ApiResponseException {
  UnprocessableEntityException(ApiResponseModel model)
      : super(
          model,
          "Unprocessable Entity Error: ",
        );
}

class ServerErrorException extends ApiResponseException {
  ServerErrorException(ApiResponseModel model) : super(model, "");
}

class DefaultException implements Exception {
  final String? _message;

  DefaultException(this._message);
  @override
  String toString() => _message ?? "No internet connection";
}

class SharedPreferencesException extends DefaultException {
  SharedPreferencesException([String? message])
      : super(message ?? "Shared preferences error");
}

class NoInternetException extends DefaultException {
  NoInternetException() : super('No Internet Connecton');
}

class UnknownException extends DefaultException {
  UnknownException(e)
      : super(e != null
            ? e.toString()
            : 'Unknown error, please report this to us');
}

class ConnectTimeoutException extends DefaultException {
  ConnectTimeoutException() : super('Connection timeout, please try again');
}

class SendTimeoutException extends DefaultException {
  SendTimeoutException() : super('Sended timeout, please try again');
}

class ReceiveTimeoutException extends DefaultException {
  ReceiveTimeoutException() : super('Receive timeout, please try again');
}

class TimeoutException extends DefaultException {
  TimeoutException()
      : super('Problem with connection timeout, please try again');
}

class ApiResponseNotValidException extends DefaultException {
  ApiResponseNotValidException()
      : super('Server error, please report this to us');
}

class ServerException implements Exception {
  final int? statusCode;
  final String? message;

  ServerException({required this.statusCode, this.message});
  @override
  String toString() => message ?? 'Server exception with code: $statusCode';
}
