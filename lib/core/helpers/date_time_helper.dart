

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {


  static String formatDate({required DateTime date, required String formatType}) {
    String formatted = DateFormat(formatType,"en").format(date);
    return formatted;
  }


  static DateTime convertToDateTime({required String strDate,  String? formatType}) {
    DateTime formatted = DateFormat(formatType ?? "dd-MM-yyyy hh:mm a",).parse(strDate);
    return formatted;
  }

  static String getDayOfWeek(DateTime date) {
    const days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return days[date.weekday - 1];
  }


  static String getDate(String backendDate, {String? formatType}) {
    try {
      BuildContext context = getIt<GlobalContext>().context();
      String locale = context.read<DeviceCubit>().state.model.locale.languageCode;

      DateTime? parsed;

      /// Try strict ISO first
      try {
        parsed = DateTime.parse(backendDate.replaceAll(" ", "T"));
      } catch (_) {
        parsed = null;
      }

      /// Fallback formats
      if (parsed == null) {
        final fallbackFormats = [
          "dd-MM-yyyy hh:mm a",
          "dd MMM yyyy hh:mm a",
          "MMMM dd yyyy, hh:mm a",
          "MMMM dd yyyy, h:mm a",
          "yyyy-MM-dd HH:mm:ss",
          "dd-MM-yyyy HH:mm a",
        ];

        String normalizeAmPm(String input) =>
            input.replaceAllMapped(RegExp(r'\b(am|pm)\b', caseSensitive: false),
                    (m) => m.group(0)!.toUpperCase());

        for (var f in fallbackFormats) {
          try {
            String dateToParse = normalizeAmPm(backendDate);

            // Special handling: HH + a (mixed 24-hour + AM/PM)
            if (f.contains("HH") && f.contains("a")) {
              final regex = RegExp(
                  r"(\d{2})-(\d{2})-(\d{4}) (\d{2}):(\d{2}) (AM|PM)",
                  caseSensitive: false);
              final match = regex.firstMatch(dateToParse);
              if (match != null) {
                int hour = int.parse(match.group(4)!);
                final ampm = match.group(6)!;
                if (hour > 12) hour -= 12; // convert to 12-hour
                dateToParse =
                "${match.group(1)}-${match.group(2)}-${match.group(3)} ${hour.toString().padLeft(2, '0')}:${match.group(5)} $ampm";
              }
            }

            parsed = DateFormat(f, locale).parse(dateToParse);
            break;
          } catch (_) {}
        }
      }
      if (parsed == null) return backendDate;
      /// Convert **assume UTC** → local
      DateTime utcTime = DateTime.utc(
        parsed.year,
        parsed.month,
        parsed.day,
        parsed.hour,
        parsed.minute,
        parsed.second,
      );
      DateTime localTime = utcTime.toLocal();
      /// Format
      String formatted =
      DateFormat(formatType ?? "dd MMM yyyy - hh:mm a", locale)
          .format(localTime);
      return locale == "ar" ? _toArabicNumbers(formatted) : formatted;
    } catch (_) {
      return backendDate;
    }
  }


  static String _toArabicNumbers(String input) {
    const english = ['0','1','2','3','4','5','6','7','8','9'];
    const arabic  = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    return input;
  }



  static String _normalizeAmPm(String input) {
    return input.replaceAllMapped(RegExp(r'\b(am|pm)\b', caseSensitive: false), (match) {
      return match.group(0)!.toUpperCase();
    });
  }


}