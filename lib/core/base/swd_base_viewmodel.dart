import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:swd/core/app/app.locator.dart';
import 'package:swd/core/services/database_service.dart';
import 'package:swd/core/services/secure_storage.dart';
import 'package:swd/models/user/swd_hive_user.dart';

class SWDBaseViewModel extends BaseViewModel {
  final appContext = StackedService.navigatorKey?.currentContext;
  final sharedPref = locator<SharedPreferences>();
  final navigationService = locator<NavigationService>();
  final dbService = locator<DatabaseService>();
  final storageService = locator<SecureStorageService>();
  // final userService = locator<UserService>();

  SWDHiveUser? getCurrentUser() {
    return dbService.getCurrentUser();
  }
}
