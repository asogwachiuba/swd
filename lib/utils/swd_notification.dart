import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swd/utils/swd_colors.dart';

class AppNotification {
  static error({required String error}) {
    Fluttertoast.showToast(
      msg: error,
      timeInSecForIosWeb: 5,
      gravity: ToastGravity.TOP,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 14,
    );
  }

  static notify({required String notificationMessage}) {
    Fluttertoast.showToast(
      msg: notificationMessage,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: SWDColors.yellow,
      textColor: Colors.white,
      fontSize: 14,
    );
  }
}
