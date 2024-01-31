import 'package:flutter/material.dart';
import 'package:swd/core/api/network_exceptions.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/database_service.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/features/home/home_view.dart';
import 'package:swd/features/onboarding/verify_email/verify_email_view.dart';
import 'package:swd/models/user/swd_hive_user.dart';
import 'package:swd/models/user/swd_user.dart';
import 'package:swd/utils/swd_notification.dart';

import '../../../utils/app_logger.dart';

class LoginViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool formValid = false;

  bool _passwordIsVisibile = false;
  bool get passwordIsVisibile => _passwordIsVisibile;
  set passwordIsVisibile(bool newValue) {
    _passwordIsVisibile = newValue;
    notifyListeners();
  }

  // METHODS
  validateForm() {
    formValid = formKey.currentState!.validate();
    if (!formValid) {
      AppNotification.error(error: "Fill in your login details correctly");
    }
    notifyListeners();
  }

  togglePasswordVisibility() {
    passwordIsVisibile = !passwordIsVisibile;
  }

  toCreateAccountView() {
    navigationService.navigateToCreateAccountView();
  }

  toResetPassword() {
    navigationService.navigateToResetPasswordView();
  }

  sendEmailVerificationOtp() async {
    setBusy(true);
    bool sentSuccessfully = false;

    final response = await _onboardingService.sendEmailVerificationOTP(
      email: emailController.text,
    );

    setBusy(false);
    response.when(success: (result) async {
      sentSuccessfully = true;
      return sentSuccessfully;
    }, failure: (error) {
      final errorMessage = NetworkExceptions.getErrorMessage(error);
      logger.e(errorMessage);
      return sentSuccessfully;
    });
    return sentSuccessfully;
  }

  toVerifyOtpView() async {
    if (!(dbService.isEmailVerified ?? true)) {
      AppNotification.notify(
          notificationMessage: "Verify your email to complete your login");
      bool hasSentEmailVerificationOtp = false;
      int trials = 0;
      while (!hasSentEmailVerificationOtp) {
        if (trials == 3) {
          break;
        }
        hasSentEmailVerificationOtp = await sendEmailVerificationOtp();
        trials++;
      }

      navigationService.clearStackAndShowView(const VerifyEmailView());
    }
  }

  toHome() {
    navigationService.clearStackAndShowView(const HomeView());
  }

  signIn() async {
    validateForm();

    if (formValid) {
      setBusy(true);

      final response = await _onboardingService.login(
        email: emailController.text,
        password: passwordController.text,
      );

      setBusy(false);
      response.when(success: (result) async {
        if (result?.swdUser != null) {
          toHome();
        } else {
          toVerifyOtpView();
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }
}
