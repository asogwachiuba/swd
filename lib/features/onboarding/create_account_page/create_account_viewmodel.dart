import 'package:flutter/material.dart';
import 'package:swd/core/api/network_exceptions.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/utils/app_logger.dart';
import 'package:swd/utils/swd_notification.dart';

class CreateAccountViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final referralController = TextEditingController();

  bool _passwordIsVisibile = false;
  bool get passwordIsVisibile => _passwordIsVisibile;
  set passwordIsVisibile(bool newValue) {
    _passwordIsVisibile = newValue;
    notifyListeners();
  }

  final formKey = GlobalKey<FormState>();
  bool formValid = false;

  // METHODS

  validateForm() {
    formValid = formKey.currentState?.validate() ?? false;
    if (!formValid) {
      AppNotification.error(error: "Fill in the form approiprately");
    }
    notifyListeners();
  }

  Future<bool> createAccount() async {
    validateForm();
    bool accountCreatedSuccessfully = false;

    if (formValid) {
      setBusy(true);

      final response = await _onboardingService.createAccount(
        email: emailController.text,
        password: passwordController.text,
        firstName: firstNameController.text,
        lastNme: lastNameController.text,
        phone: phoneController.text,
      );

      setBusy(false);
      response.when(success: (result) async {
        accountCreatedSuccessfully = true;
        return accountCreatedSuccessfully;
      }, failure: (error) {
        final errorMessage = NetworkExceptions.getErrorMessage(error);
        logger.e(errorMessage);
        return accountCreatedSuccessfully;
      });
    }
    return accountCreatedSuccessfully;
  }

  Future<bool> sendEmailVerificationOtp() async {
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

  togglePasswordVisibility() {
    passwordIsVisibile = !passwordIsVisibile;
  }

  goBack() {
    navigationService.back();
  }

  toLoginView() {
    navigationService.navigateToLoginView();
  }

  toVerifyEmailView() {
    navigationService.navigateToVerifyEmailView();
  }

  next() async {
    bool isAccountCreationSuccessful = await createAccount();
    bool hasSentEmailVerificationOtp = false;
    int trials = 0;
    if (isAccountCreationSuccessful) {
      while (!hasSentEmailVerificationOtp) {
        if (trials == 3) {
          break;
        }
        hasSentEmailVerificationOtp = await sendEmailVerificationOtp();
        trials++;
      }
      toVerifyEmailView();
    }
  }
}
