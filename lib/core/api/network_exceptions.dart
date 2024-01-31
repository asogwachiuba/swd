import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/app_logger.dart';

part 'network_exceptions.freezed.dart';

/// Depending on what is the agreed error coding with backend
@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest(String reason) =
      UnauthorisedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.conflict(String reason) = Conflict;

  const factory NetworkExceptions.internalServerError(String message) =
      InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioErrorType.other:
              if (kDebugMode) {
                if (error.message.contains("Deserializing")) {
                  log(" ==================== Deserialization issues ================ \n ${error.stackTrace}");
                }
              }
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            // ignore: deprecated_member_use
            case DioErrorType.response:
              Map<String, dynamic>? data = error.response?.data;
              String reason = "An error occurred";
              if (data?["message"] != null) {
                reason = data?["message"];
              } else if (data?["error"] != null) {
                reason = data?["error"];
              } else if (data?["errors"]?.first?['msg'] != null) {
                reason = data?["errors"]?.first?['msg'];
              }

              switch (error.response!.statusCode) {
                case 400:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(reason);
                  break;
                case 401:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(reason);
                  break;
                case 403:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(reason);
                  break;
                case 404:
                  networkExceptions = NetworkExceptions.notFound(reason);
                  break;
                case 409:
                  networkExceptions = NetworkExceptions.conflict(reason);
                  break;
                case 408:
                  networkExceptions = const NetworkExceptions.requestTimeout();
                  break;
                case 500:
                  networkExceptions =
                      NetworkExceptions.internalServerError(reason);
                  break;
                case 503:
                  networkExceptions =
                      const NetworkExceptions.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response!.statusCode;
                  networkExceptions = NetworkExceptions.defaultError(
                    "Invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        logger.e(error.toString());
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: (String message) {
      errorMessage = message;
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service Unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method not allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorisedRequest: (String reason) {
      errorMessage = reason;
    }, unexpectedError: () {
      errorMessage = "An unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No Internet Connection";
    }, conflict: (String? reason) {
      // errorMessage = S.current.errorDueToConflict;
      errorMessage = reason ?? "Error due to conflict";
    }, sendTimeout: () {
      errorMessage = "Connection timeout";
    }, unableToProcess: () {
      errorMessage = "Unable to process data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "An unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}
