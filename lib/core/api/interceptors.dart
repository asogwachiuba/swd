import 'package:dio/dio.dart';

import '../../utils/app_logger.dart';
import '../constants/storage_key.dart';
import '../services/secure_storage.dart';

class UnAuthorizedErrorHandler extends Interceptor {}

class AuthorizationTokenInjector extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final secureStorageService = SecureStorageService();
    String? token = await secureStorageService.read(key: StorageKey.tokenKey);
    if (token != null) {
      logger.d("This token $token was added");
      options.headers["authorization"] = "Bearer $token";
      options.headers["Content-Type"] = "application/json";
      options.headers["Accept"] = "application/json";
    } else {
      // logger.d("No token was added");
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // AuthenticationRepository.isUserLoginSessionExpired = true;
    }
    super.onError(err, handler);
  }
}
