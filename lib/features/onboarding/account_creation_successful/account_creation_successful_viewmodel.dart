import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/features/home/home_view.dart';

class AccountCreationSuccessfulViewModel extends SWDBaseViewModel {
  void proceedToHome() {
    navigationService.clearStackAndShowView(const HomeView());
  }
}
