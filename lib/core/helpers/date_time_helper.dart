import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:intl/intl.dart';

class DateTimeHelper {


  static String formatDate({required DateTime date, required String formatType}) {
    String formatted = DateFormat(formatType,"en").format(date);
    return formatted;
  }


  static DateTime convertToDateTime({required String strDate}) {
    String cleaned = strDate.replaceAll(RegExp(r"\s(AM|PM)$"), "");
    return DateFormat("dd-MM-yyyy HH:mm").parse(cleaned);
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
      final context = getIt<GlobalContext>().context();
      final locale = context.read<DeviceCubit>().state.model.locale.languageCode;

      DateTime? parsed;

      // Normalize AM/PM
      String normalizeAmPm(String input) => input.replaceAllMapped(
        RegExp(r'\b(am|pm)\b', caseSensitive: false),
            (m) => m.group(0)!.toUpperCase(),
      );
      String normalizedDate = normalizeAmPm(backendDate.trim());

      // --- 🩹 Fix invalid cases like "13:55 PM" or "00:30 AM" ---
      final hourMatch = RegExp(r'(\d{1,2}):\d{2}').firstMatch(normalizedDate);
      if (hourMatch != null) {
        final hour = int.tryParse(hourMatch.group(1)!);
        if (hour != null && hour > 12 && normalizedDate.contains(RegExp(r'AM|PM'))) {
          // Convert to valid 12-hour format
          final correctedHour = hour - 12;
          normalizedDate = normalizedDate.replaceFirst(
            RegExp(r'\b\d{1,2}:'),
            '${correctedHour.toString().padLeft(2, "0")}:',
          );
        }
      }

      // --- Try parsing ---
      final formats = [
        "dd-MM-yyyy hh:mm a",
        "dd-MM-yyyy HH:mm",
        "dd MMM yyyy hh:mm a",
        "dd MMM yyyy HH:mm",
        "MMMM dd yyyy, hh:mm a",
        "MMMM dd yyyy, h:mm a",
        "yyyy-MM-dd HH:mm:ss",
        "yyyy-M-d H:mm",
        "yyyy-MM-dd hh:mm a",
        "yyyy-MM-dd HH:mm",
        "dd MMMM yyyy hh:mm a",
        "d MMM yyyy - hh:mm a",
        formatType
      ];

      for (var f in formats) {
        try {
          parsed = DateFormat(f, locale).parseStrict(normalizedDate);
          break;
        } catch (_) {}
      }

      parsed ??= DateTime.tryParse(normalizedDate.replaceAll(" ", "T"));

      if (parsed == null) {
        log("⚠️ Could not parse date: $backendDate");
        return backendDate;
      }

      final formatted = DateFormat(
        formatType ?? "dd MMM yyyy - hh:mm a",
        locale,
      ).format(parsed);

      if (locale == LangCodeHelper.langAR) {
        return _toArabicNumbers(formatted);
      }

      return formatted;
    } catch (e) {
      log("❌ Error in getDate: $e");
      return backendDate;
    }
  }


  static String _toArabicNumbers(String input) {
    const english = ['0','1','2','3','4','5','6','7','8','9'];
    const arabic  = ['٠','١','٢','٣','٤','٥','٦','٧','٨','٩'];

    for (int i = 0; i < english.length; i++) {
      input = input.replaceAll(english[i], arabic[i]);
    }
    
    // Also convert month names to Arabic if they exist
    const englishMonths = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    const arabicMonths = [
      'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
      'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
    ];
    
    for (int i = 0; i < englishMonths.length; i++) {
      input = input.replaceAll(englishMonths[i], arabicMonths[i]);
    }
    
    return input;
  }

  /// Convert month abbreviation to month number
  static int _getMonthFromAbbreviation(String monthAbbr) {
    const monthMap = {
      'Jan': 1, 'Feb': 2, 'Mar': 3, 'Apr': 4, 'May': 5, 'Jun': 6,
      'Jul': 7, 'Aug': 8, 'Sep': 9, 'Oct': 10, 'Nov': 11, 'Dec': 12
    };
    
    String normalized = monthAbbr.substring(0, 3).toLowerCase();
    for (String key in monthMap.keys) {
      if (key.toLowerCase() == normalized) {
        return monthMap[key]!;
      }
    }
    
    // Fallback: try to parse as number
    try {
      return int.parse(monthAbbr);
    } catch (_) {
      return 1; // Default to January if parsing fails
    }
  }

  /// Convert full month name to month number
  static int _getMonthFromName(String monthName) {
    const monthMap = {
      'January': 1, 'February': 2, 'March': 3, 'April': 4, 'May': 5, 'June': 6,
      'July': 7, 'August': 8, 'September': 9, 'October': 10, 'November': 11, 'December': 12
    };
    
    String normalized = monthName.toLowerCase();
    for (String key in monthMap.keys) {
      if (key.toLowerCase() == normalized) {
        return monthMap[key]!;
      }
    }
    
    // Try abbreviation as fallback
    return _getMonthFromAbbreviation(monthName);
  }


}