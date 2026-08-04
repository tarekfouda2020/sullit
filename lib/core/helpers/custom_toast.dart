import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/widgets/auth_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastType { success, error, info }

class CustomToast {
  static Map<ToastType, Color> toastBgColors = {
    ToastType.success: AppColors.snackBarGreenSuccess,
    ToastType.error: AppColors.snackBarRedError,
    ToastType.info: AppColors.snackBarYellowAlert,
  };

  static void showSnakeBar(msg,
      {Color? color,
      Color? textColor,
      ToastGravity? toastGravity,
      ToastType type = ToastType.error}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: toastGravity ?? ToastGravity.BOTTOM,
        backgroundColor: color ?? toastBgColors[type],
        textColor: textColor ?? Colors.white,
        fontSize: 16.0);
  }

  static void showAuthDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return const BuildAuthDialog();
      },
    );
  }

  static void showSimpleToast(
      {required String msg,
      Color? color,
      Color? textColor,
      ToastGravity? toastGravity,
      ToastType type = ToastType.error}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: toastGravity ?? ToastGravity.BOTTOM,
        backgroundColor: color ?? toastBgColors[type],
        textColor: textColor ?? Colors.white,
        fontSize: 16.0);
  }
}
