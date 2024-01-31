import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/app/app.router.dart';
import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/services/onboarding_service.dart';

class SettingsViewModel extends SWDBaseViewModel {
  final _onboardingService = locator<OnboardingService>();

  toSignInView() {
    navigationService.navigateToLoginView();
  }

  logOut() async {
    setBusy(true);
    await _onboardingService.logOut();
    setBusy(false);
    toSignInView();
  }
}
