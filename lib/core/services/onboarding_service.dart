import 'package:shared_preferences/shared_preferences.dart';
import 'package:swd/core/api/api.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/constants/storage_key.dart';
import 'package:swd/core/services/database_service.dart';
import 'package:swd/core/services/secure_storage.dart';
import 'package:swd/models/login_response/login_response.dart';
import 'package:swd/models/user/swd_hive_user.dart';
import 'package:swd/models/user/swd_user.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_notification.dart';

abstract class OnboardingServiceAbstract {
  Future<ApiResult<LoginResponse?>> login({
    required String email,
    required String password,
  });

  Future<ApiResult<SWDUser>> createAccount({
    required String email,
    required String firstName,
    required String lastNme,
    required String phone,
    required String password,
  });

  Future<ApiResult<bool>> sendEmailVerificationOTP({
    required String email,
  });
  Future<ApiResult<bool>> sendPasswordResetOTP({
    required String email,
  });

  Future<ApiResult<bool>> verifyEmail({
    required int otp,
  });

  Future<ApiResult<bool>> verifyPasswordResetOtp(
      {required int otp, required String email});

  Future<ApiResult<bool>> resetPassword(
      {required int otp, required String email, required String newPassword});
  Future<bool> isLoggedIn();
  Future<bool> authTokenExist();
  Future clearToken();
  Future logOut();
}

class OnboardingService extends OnboardingServiceAbstract {
  final ApiClient _apiClient = locator<ApiClient>();
  final DatabaseService _databaseService = locator<DatabaseService>();
  final SecureStorageService _storageService = locator<SecureStorageService>();
  final _sharedPref = locator<SharedPreferences>();

  @override
  Future logOut() async {
    clearToken();
    _databaseService.nukeDb();
  }

  @override
  Future<bool> authTokenExist() async {
    return await _storageService.containsKey(key: StorageKey.tokenKey);
  }

  @override
  Future clearToken() async {
    _storageService.delete(key: StorageKey.tokenKey);
  }

  @override
  Future<ApiResult<SWDUser>> createAccount(
      {required String email,
      required String firstName,
      required String lastNme,
      required String phone,
      required String password}) async {
    try {
      final request = {
        "first_name": firstName,
        "email": email,
        "phone": phone,
        "password": password,
        "last_name": lastNme,
      };

      final response = await _apiClient.post("auth/register", data: request);
      if ((response.statusCode == 201 || response.statusCode == 200) &&
          response.data != null) {
        final data = LoginResponse.fromJson(response.data['data']);
        _storageService.write(key: StorageKey.tokenKey, value: data.token);

        if (data.swdUser != null) {
          _databaseService.saveCurrentUser(
              SWDHiveUser.fromSigninResponse(user: data.swdUser!));
        }

        return ApiResult.success(data: data.swdUser!);
      } else {
        AppNotification.error(error: "Error creating account. Try again later");
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      AppNotification.error(error: "Error creating account. Try again later");
      logger.d(e.toString());
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<LoginResponse?>> login({
    required String email,
    required String password,
  }) async {
    try {
      final request = {
        "email": email,
        "password": password,
        "fcm_token": null,
      };

      final response = await _apiClient.post("auth/login", data: request);

      if (response.statusCode == 200 && response.data != null) {
        final data = LoginResponse.fromJson(response.data['data']);
        _storageService.write(key: StorageKey.tokenKey, value: data.token);

        _sharedPref.setString("token", data.token ?? '');

        if (data.swdUser != null) {
          _databaseService.saveCurrentUser(
              SWDHiveUser.fromSigninResponse(user: data.swdUser!));
        }

        return ApiResult.success(data: data);
      } else {
        if (response.statusCode == 400) {
          AppNotification.error(error: "Your account is not verified");
          _databaseService.isEmailVerified = false;
          return const ApiResult.success(data: null);
        } else {
          AppNotification.error(
              error: "Error logging into your account. Try again later");
        }
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['message']));
      }
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      if (error ==
          const NetworkExceptions.unauthorisedRequest("User not verified")) {
        AppNotification.error(error: "Your account is not verified");
        _databaseService.isEmailVerified = false;
        return const ApiResult.success(data: null);
      } else {
        AppNotification.error(
            error: "Error logging into your account. Try again later");
      }
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<bool>> resetPassword(
      {required int otp,
      required String email,
      required String newPassword}) async {
    try {
      final request = {
        "otp": otp,
        "email": email,
        "password": newPassword,
      };

      final response =
          await _apiClient.post("auth/password/reset", data: request);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return const ApiResult.success(data: true);
      } else {
        AppNotification.error(
            error: "Error resetting your password. Try again later");
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      AppNotification.error(
          error: "Error resetting your password. Try again later");
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<bool>> sendEmailVerificationOTP(
      {required String email}) async {
    try {
      final request = {
        "email": email,
      };

      final response =
          await _apiClient.post("auth/email/resend", data: request);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return const ApiResult.success(data: true);
      } else {
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<bool>> verifyEmail({required int otp}) async {
    try {
      final request = {"otp": otp};

      final response =
          await _apiClient.post("auth/email/verify", data: request);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return const ApiResult.success(data: true);
      } else {
        AppNotification.error(
            error: "Error verifying your email address. Try again later");
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      AppNotification.error(
          error: "Error verifying your email address. Try again later");
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<bool>> sendPasswordResetOTP({required String email}) async {
    try {
      final request = {
        "email": email,
      };

      final response =
          await _apiClient.post("auth/password/email", data: request);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return const ApiResult.success(data: true);
      } else {
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<ApiResult<bool>> verifyPasswordResetOtp(
      {required int otp, required String email}) async {
    try {
      final request = {"email": email, "otp": otp};

      final response =
          await _apiClient.post("auth/password/token", data: request);
      if (response.statusCode == 201 || response.statusCode == 200) {
        return const ApiResult.success(data: true);
      } else {
        return ApiResult.failure(
            error: NetworkExceptions.defaultError(response.data['error']));
      }
    } catch (e) {
      final error = NetworkExceptions.getDioException(e);
      return ApiResult.failure(error: error);
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    bool authToken = await authTokenExist();
    return authToken && _databaseService.getCurrentUser() != null;
  }
}
