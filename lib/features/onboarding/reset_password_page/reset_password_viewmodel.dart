import 'package:flutter/material.dart';
import 'package:swd/core/api/network_exceptions.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/enum/reset_password_states.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_notification.dart';

class ResetPasswordViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final otpController = TextEditingController();
  final confirmPasswordontroller = TextEditingController();
  final verifyEmailFormKey = GlobalKey<FormState>();
  final verifyOtpFormKey = GlobalKey<FormState>();
  final passwordFormKey = GlobalKey<FormState>();

  final focusNode = FocusNode();

  ResetPasswordStates _resetPasswordState = ResetPasswordStates.emailUnverified;
  ResetPasswordStates get resetPasswordState => _resetPasswordState;
  set resetPasswordState(ResetPasswordStates newValue) {
    _resetPasswordState = newValue;
    notifyListeners();
  }

  bool _emailFormValid = false;
  bool get emailFormValid => _emailFormValid;
  set emailFormValid(bool newValue) {
    _emailFormValid = newValue;
    notifyListeners();
  }

  bool _otpFormValid = false;
  bool get otpFormValid => _otpFormValid;
  set otpFormValid(bool newValue) {
    _otpFormValid = newValue;
    notifyListeners();
  }

  bool _passwordFormValid = false;
  bool get passwordFormValid => _passwordFormValid;
  set passwordFormValid(bool newValue) {
    _passwordFormValid = newValue;
    notifyListeners();
  }

  bool _passwordIsVisibile = false;
  bool get passwordIsVisibile => _passwordIsVisibile;
  set passwordIsVisibile(bool newValue) {
    _passwordIsVisibile = newValue;
    notifyListeners();
  }

  bool _confirmPasswordIsVisibile = false;
  bool get confirmPasswordIsVisibile => _confirmPasswordIsVisibile;
  set confirmPasswordIsVisibile(bool newValue) {
    _confirmPasswordIsVisibile = newValue;
    notifyListeners();
  }

  // METHODS

  bool resetPassword() {
    return true;
  }

  validateEmailForm() {
    emailFormValid = verifyEmailFormKey.currentState?.validate() ?? false;
    if (!emailFormValid) {
      AppNotification.error(error: "Fill in your email correctly");
    }
  }

  validatePasswordForm() {
    passwordFormValid = passwordFormKey.currentState?.validate() ?? false;
    if (!passwordFormValid) {
      AppNotification.error(error: "Fill in your password correctly");
    }
  }

  validateOtpForm() {
    otpFormValid = verifyOtpFormKey.currentState?.validate() ?? false;
    if (!otpFormValid) {
      AppNotification.error(error: "Fill in code sent to your mail correctly");
    }
  }

  resendVerificationCode() async {
    setBusy(true);

    final response = await _onboardingService.sendPasswordResetOTP(
      email: emailController.text,
    );

    setBusy(false);
    response.when(success: (result) async {
      if (result) {
        otpController.clear();
      }
    }, failure: (error) {
      final errorMessage = NetworkExceptions.getErrorMessage(error);
      logger.e(errorMessage);
    });
  }

  verifyEmail() async {
    validateEmailForm();
    if (emailFormValid) {
      setBusy(true);

      final response = await _onboardingService.sendPasswordResetOTP(
        email: emailController.text,
      );

      setBusy(false);
      response.when(success: (result) async {
        if (result) {
          resetPasswordState = ResetPasswordStates.emailVerified;
          focusNode.requestFocus();
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }

  verifyOtp({required String otp}) async {
    validateOtpForm();

    if (int.tryParse(otpController.text) == null) {
      logger.d("The otp is not an integer");
      return;
    }
    if (emailFormValid) {
      setBusy(true);

      final response = await _onboardingService.verifyPasswordResetOtp(
        email: emailController.text,
        otp: int.tryParse(otpController.text)!,
      );

      setBusy(false);
      response.when(success: (result) async {
        if (result) {
          resetPasswordState = ResetPasswordStates.otpVerified;
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }

  createNewPassword() async {
    validatePasswordForm();
    // If password is created successfully
    if (passwordFormValid && confirmPasswordontroller.text.isNotEmpty) {
      setBusy(true);

      final response = await _onboardingService.resetPassword(
        email: emailController.text,
        // otp has been validated before so its a validated integer
        otp: int.tryParse(otpController.text)!,
        newPassword: passwordController.text,
      );

      setBusy(false);
      response.when(success: (result) async {
        if (result) {
          resetPasswordState = ResetPasswordStates.emailUnverified;
          navigationService.replaceWithLoginView();
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }

  togglePasswordVisibility() {
    passwordIsVisibile = !passwordIsVisibile;
  }

  toggleConfirmPasswordVisibility() {
    confirmPasswordIsVisibile = !confirmPasswordIsVisibile;
  }

  goBack() {
    navigationService.back();
  }
}
