import 'package:swd/core/base/swd_base_viewmodel.dart';
import 'package:swd/models/user/swd_hive_user.dart';

class DashboardViewModel extends SWDBaseViewModel {
  SWDHiveUser? _user;

  bool _passwordIsVisibile = false;
  bool get passwordIsVisibile => _passwordIsVisibile;
  set passwordIsVisibile(bool newValue) {
    _passwordIsVisibile = newValue;
    notifyListeners();
  }

  onReady() {
    _user = getCurrentUser();
  }

  String getUserFirstname() {
    if (_user == null) {
      _user = getCurrentUser();
      return _user?.firstName ?? "Friend";
    }
    return _user?.firstName ?? "Friend";
  }

  togglePasswordVisibility() {
    passwordIsVisibile = !passwordIsVisibile;
  }
}
