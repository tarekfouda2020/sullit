import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';

class AdaptivePicker {
  static datePicker(
      {required BuildContext context,
      required Function(DateTime? date) onConfirm,
      required String title,
      DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime}) async {
    if (Platform.isIOS) {
      _iosDatePicker(context, onConfirm, title,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime);
    } else {
      _androidDatePicker(context, onConfirm,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime);
    }
  }

  static _androidDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime}) {
    showRoundedDatePicker(
        context: context,
        initialDate: initial ?? DateTime.now(),
        firstDate: minDate ?? DateTime.now().add(const Duration(days: -1)),
        lastDate: maxDate ?? DateTime(2050),
        borderRadius: 16,
        height: 300,
        theme: ThemeData.light().copyWith(
          primaryColor: context.colors.primary,
          backgroundColor: context.colors.white,
          buttonTheme:
              const ButtonThemeData(textTheme: ButtonTextTheme.primary),
        )).then(onConfirm);
  }

  static _iosDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm, String title,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime}) {
    bottomSheet(
      context: context,
      child: cupertinoDatePicker(context, onConfirm, title,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime ?? false),
    );
  }

  static Widget cupertinoDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm, String title,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool isDateTime = false}) {
    DateTime dateNow = DateTime.now();
    return SizedBox(
      height: 260.h,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
                DefaultButton(
                  title: "Done",
                  width: 80.w,
                  height: 25.h,
                  onTap: () {
                    onConfirm(dateNow);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          Flexible(
            child: CupertinoTheme(
              data: const CupertinoThemeData(),
              child: CupertinoDatePicker(
                initialDateTime: initial ?? DateTime.now(),
                onDateTimeChanged: (date) {
                  dateNow = date;
                },
                maximumDate: maxDate ?? DateTime(2050),
                minimumDate: minDate ?? DateTime.now().add(Duration(hours: -1)),
                mode: isDateTime
                    ? CupertinoDatePickerMode.dateAndTime
                    : CupertinoDatePickerMode.date,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static timePicker(
      {required BuildContext context,
      required String title,
      required Function(DateTime? date) onConfirm}) async {
    if (Platform.isIOS) {
      _iosTimePicker(context, title, onConfirm);
    } else {
      _androidTimePicker(context, onConfirm);
    }
  }

  static _androidTimePicker(
      BuildContext context, Function(DateTime date) onConfirm) {
    var now = DateTime.now();
    showRoundedTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((time) => onConfirm(
        DateTime(now.year, now.month, now.day, time!.hour, time.minute)));
  }

  static _iosTimePicker(
      BuildContext context, String title, Function(DateTime? date) onConfirm) {
    bottomSheet(
      context: context,
      child: cupertinoTimePicker(context, title, onConfirm),
    );
  }

  static Widget cupertinoTimePicker(
      BuildContext context, String title, Function(DateTime? date) onConfirm) {
    DateTime dateNow = DateTime.now();
    return SizedBox(
      height: 260,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      onConfirm(dateNow);
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: context.colors.white),
                    child: Text(
                      "Done",
                      style:
                          AppTextStyle.s14_w500(color: context.colors.primary),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
              child: CupertinoDatePicker(
            onDateTimeChanged: (date) {
              dateNow = date;
            },
            mode: CupertinoDatePickerMode.time,
          )),
        ],
      ),
    );
  }

  static Future bottomSheet({required BuildContext context, required Widget child}) {
    return showModalBottomSheet(
      isScrollControlled: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.dp10),
        ),
      ),
      backgroundColor: context.colors.white,
      context: context,
      builder: (context) => SizedBox(
        height: 320,
        child: child,
      ),
    );
  }
}
