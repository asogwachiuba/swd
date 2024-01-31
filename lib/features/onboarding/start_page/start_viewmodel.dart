import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/onboarding_service.dart';
import 'package:swd/features/onboarding/create_account_page/create_account_view.dart';
import 'package:swd/features/onboarding/login_page/login_view.dart';
import 'package:swd/features/onboarding/welcome_back_page/welcome_back_view.dart';
import 'package:swd/utils/app_logger.dart';

class StartViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  /// Checks if user is still logged in
  onReady() async {
    bool isUserLoggedIn = await _onboardingService.isLoggedIn();
    logger.d("Is user logged in? $isUserLoggedIn");
    if (isUserLoggedIn) {
      toWelcomeBackView();
    }
  }

  toLoginView() {
    navigationService.navigateToView(const LoginView());
  }

  toCreateAccountView() {
    navigationService.navigateToView(const CreateAccountView());
  }

  /// takes currently logged in user to the welcome back page
  toWelcomeBackView() {
    navigationService.navigateToView(const WelcomeBackView());
  }
}
