import 'package:flutter/material.dart';
import 'package:swd/core/api/network_exceptions.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/features/home/home_view.dart';
import 'package:swd/features/onboarding/verify_email/verify_email_view.dart';
import 'package:swd/models/user/swd_hive_user.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_notification.dart';

class WelcomeBackViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();
  bool _isAuthenticating = false;
  bool get isAuthenticating => _isAuthenticating;

  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool formValid = false;
  String _firstName = "";
  String get firstName => _firstName;
  set firstName(String newValue) {
    _firstName = newValue;
    notifyListeners();
  }

  bool _passwordIsVisibile = false;
  bool get passwordIsVisibile => _passwordIsVisibile;
  set passwordIsVisibile(bool newValue) {
    _passwordIsVisibile = newValue;
    notifyListeners();
  }

  // METHODS
  onReady() {
    firstName = dbService.getCurrentUser()?.firstName ?? "empty";
    checkEmailVerificationStatus();
  }

  sendEmailVerificationOtp() async {
    setBusy(true);
    bool sentSuccessfully = false;
    final String email = dbService.getCurrentUser()?.email ?? "";

    final response = await _onboardingService.sendEmailVerificationOTP(
      email: email,
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

  checkEmailVerificationStatus() async {
    SWDHiveUser? user = dbService.getCurrentUser();
    if (user != null && user.emailVerified != null && !user.emailVerified!) {
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

  togglePasswordVisibility() {
    passwordIsVisibile = !passwordIsVisibile;
  }

  validateForm() {
    formValid = formKey.currentState!.validate();
    notifyListeners();
  }

  set isAuthenticating(bool newValue) {
    _isAuthenticating = newValue;
    notifyListeners();
  }

  userFaceAuthentication() async {
    isAuthenticating = true;
    logger.d("Am i authenticating? $isAuthenticating");
    await Future.delayed(Duration(seconds: 10), () {
      isAuthenticating = false;
    });
    logger.d("I was cicked");
    logger.d("Am i authenticating? $isAuthenticating");
  }

  toResetPassword() {
    navigationService.navigateToResetPasswordView();
  }

  toLoginView() {
    navigationService.navigateToLoginView();
  }

  void switchAccount() {
    _onboardingService.logOut();
    toLoginView();
  }

  toHome() {
    navigationService.clearStackAndShowView(const HomeView());
  }

  siginIn() async {
    validateForm();

    if (formValid) {
      isAuthenticating = true;

      final response = await _onboardingService.login(
        email: dbService.getCurrentUser()?.email ?? "email-not-gotten",
        password: passwordController.text,
      );

      isAuthenticating = false;
      response.when(success: (result) async {
        if (result?.swdUser != null) {
          toHome();
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }
}
