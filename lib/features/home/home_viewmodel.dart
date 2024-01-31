import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/core/enum/home_tabs.dart';
import 'package:swd/utils/app_logger.dart';

class HomeViewModel extends SWDBaseViewModel {
  HomeTabs _currentTab = HomeTabs.dashboard;
  HomeTabs get currentTab => _currentTab;
  set currentTab(HomeTabs newValue) {
    _currentTab = newValue;
    notifyListeners();
  }

  //METHODS

  changeTab({required HomeTabs selectedTab}) {
    currentTab = selectedTab;
  }
}
