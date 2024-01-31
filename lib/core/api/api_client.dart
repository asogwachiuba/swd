import 'package:dio/dio.dart';
import 'package:swd/core/custom_url.dart';

import 'interceptors.dart';

class ApiClient {
  Dio get dio => _initializeDio(CustomUrl.baseUrl);

  Dio _initializeDio(String baseUrl) {
    final dio = Dio()
      ..options.baseUrl = CustomUrl.baseUrl
      ..options.connectTimeout = 35000
      ..options.receiveTimeout = 35000;

    dio.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
      UnAuthorizedErrorHandler(),
      AuthorizationTokenInjector(),
    ]);

    return dio;
  }

  // Get:-----------------------------------------------------------------------
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Response> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Response> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Patch:--------------------------------------------------------------------
  Future<Response> patch(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
