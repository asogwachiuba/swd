import 'package:flutter/material.dart';
import 'package:swd/core/api/network_exceptions.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/features/onboarding/account_creation_successful/account_creation_successful_view.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_notification.dart';

class VerifyEmailViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  final focusNode1 = FocusNode();
  final otpController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool _otpFormValid = false;
  bool get otpFormValid => _otpFormValid;
  set otpFormValid(bool newValue) {
    _otpFormValid = newValue;
    notifyListeners();
  }

  String? _email = "";
  String? get email => _email;
  set email(String? newValue) {
    _email = newValue;
    notifyListeners();
  }

  //METHODS

  onReady() {
    email = dbService.getCurrentUser()?.email;
  }

  validateOtpForm() {
    otpFormValid = formKey.currentState?.validate() ?? false;
    if (!otpFormValid) {
      AppNotification.error(
          error: "Fill in code sent to ${email ?? "your mail"} correctly");
    }
  }

  verifyEmail() async {
    validateOtpForm();

    if (int.tryParse(otpController.text) == null) {
      logger.d("The otp is not an integer");
      return;
    }
    if (otpFormValid) {
      setBusy(true);

      final response = await _onboardingService.verifyEmail(
        otp: int.tryParse(otpController.text)!,
      );

      setBusy(false);
      response.when(success: (result) async {
        if (result) {
          toAccountCreationSuccessfulView();
        }
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
      });
    }
  }

  toAccountCreationSuccessfulView() {
    navigationService
        .clearTillFirstAndShowView(const AccountCreationSuccessfulView());
  }

  goBack() {
    navigationService.back();
  }
}
