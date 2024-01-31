import 'package:hive_flutter/hive_flutter.dart';
import 'package:swd/models/user/swd_hive_user.dart';
import 'package:swd/utils/app_logger.dart';

import '../constants/hive_constants.dart';

class DatabaseService {
  /// If null or true, it has been verified previuosly but if false it has not being verified
  bool? isEmailVerified;
  Future initializeDb() async {
    await Hive.initFlutter();
    Hive.registerAdapter<HiveBank>(HiveBankAdapter());
    Hive.registerAdapter<SWDHiveUser>(SWDHiveUserAdapter());

    await Hive.openBox<SWDHiveUser>(HiveBoxName.currentUserBoxName);
  }

  //To be used when a different User wants to login
  Future nukeDb() async {
    Box<SWDHiveUser> currentUserBox = Hive.box(HiveBoxName.currentUserBoxName);
    await currentUserBox.clear();
  }

  Future saveCurrentUser(SWDHiveUser swdUser) async {
    try {
      Box<SWDHiveUser> currentUserBox =
          Hive.box(HiveBoxName.currentUserBoxName);

      ///must contain only one user
      await currentUserBox.clear();
      currentUserBox.add(swdUser);
      logger.d("The user id's are ${swdUser.id} and name is ${swdUser.name}");
    } catch (e) {
      logger.e("DB error: $e");
    }
  }

  SWDHiveUser? getCurrentUser() {
    Box<SWDHiveUser> currentUserBox = Hive.box(HiveBoxName.currentUserBoxName);
    return currentUserBox.values.isNotEmpty
        ? currentUserBox.values.first
        : null;
  }
}
