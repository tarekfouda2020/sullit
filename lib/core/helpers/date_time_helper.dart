

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
      try {
        parsed = DateTime.parse(backendDate.replaceAll(" ", "T"));
      } catch (_) {
        parsed = null;
      }
      if (parsed == null) {
        final fallbackFormats = [
          "dd-MM-yyyy hh:mm a",
          "dd-MM-yyyy HH:mm a",
          "dd MMM yyyy hh:mm a",
          "MMMM dd yyyy, hh:mm a",
          "MMMM dd yyyy, h:mm a",
          "yyyy-MM-dd HH:mm:ss",
          "yyyy-M-d H:mm",
          "yyyy-M-d HH:mm",
        ];
        String normalizeAmPm(String input) =>
            input.replaceAllMapped(RegExp(r'\b(am|pm)\b', caseSensitive: false),
                    (m) => m.group(0)!.toUpperCase());
        // Try multiple regex patterns for different date formats
        final regexPatterns = [
          // Pattern 1: "26-08-2025 15:41 PM" (dd-MM-yyyy HH:mm a)
          RegExp(r"(\d{2})-(\d{2})-(\d{4}) (\d{2}):(\d{2}) (AM|PM)", caseSensitive: false),
          // Pattern 2: "30 Aug 2025 08:50 AM" (dd MMM yyyy hh:mm a)
          RegExp(r"(\d{2}) (\w{3}) (\d{4}) (\d{2}):(\d{2}) (AM|PM)", caseSensitive: false),
          // Pattern 3: "30 August 2025 08:50 AM" (dd MMMM yyyy hh:mm a)
          RegExp(r"(\d{2}) (\w+) (\d{4}) (\d{2}):(\d{2}) (AM|PM)", caseSensitive: false),
          // Pattern 4: "2025-8-13 1:42" (yyyy-M-d H:mm)
          RegExp(r"(\d{4})-(\d{1,2})-(\d{1,2}) (\d{1,2}):(\d{2})"),
        ];

        for (int i = 0; i < regexPatterns.length; i++) {
          try {
            final regex = regexPatterns[i];
            final match = regex.firstMatch(backendDate);
            
            if (match != null) {
              print("Matched pattern $i: ${regex.pattern}");
              
              if (i == 0) {
                // Pattern 1: "26-08-2025 15:41 PM"
                int day = int.parse(match.group(1)!);
                int month = int.parse(match.group(2)!);
                int year = int.parse(match.group(3)!);
                int hour = int.parse(match.group(4)!);
                int minute = int.parse(match.group(5)!);
                
                // Convert 24-hour to 12-hour format
                if (hour > 12) {
                  hour -= 12;
                } else if (hour == 0) {
                  hour = 12;
                }
                
                parsed = DateTime(year, month, day, hour, minute);
                print("Parsed with pattern 1: $parsed");
                break;
                
              } else if (i == 1) {
                // Pattern 2: "30 Aug 2025 08:50 AM"
                int day = int.parse(match.group(1)!);
                String monthStr = match.group(2)!;
                int year = int.parse(match.group(3)!);
                int hour = int.parse(match.group(4)!);
                int minute = int.parse(match.group(5)!);
                
                // Convert month abbreviation to number
                int month = _getMonthFromAbbreviation(monthStr);
                
                // Convert 24-hour to 12-hour format
                if (hour > 12) {
                  hour -= 12;
                } else if (hour == 0) {
                  hour = 12;
                }
                
                parsed = DateTime(year, month, day, hour, minute);
                print("Parsed with pattern 2: $parsed");
                break;
                
              } else if (i == 2) {
                // Pattern 3: "30 August 2025 08:50 AM"
                int day = int.parse(match.group(1)!);
                String monthStr = match.group(2)!;
                int year = int.parse(match.group(3)!);
                int hour = int.parse(match.group(4)!);
                int minute = int.parse(match.group(5)!);
                
                // Convert month name to number
                int month = _getMonthFromName(monthStr);
                
                // Convert 24-hour to 12-hour format
                if (hour > 12) {
                  hour -= 12;
                } else if (hour == 0) {
                  hour = 12;
                }
                
                parsed = DateTime(year, month, day, hour, minute);
                print("Parsed with pattern 3: $parsed");
                break;
                
              } else if (i == 3) {
                // Pattern 4: "2025-8-13 1:42" (yyyy-M-d H:mm)
                int year = int.parse(match.group(1)!);
                int month = int.parse(match.group(2)!);
                int day = int.parse(match.group(3)!);
                int hour = int.parse(match.group(4)!);
                int minute = int.parse(match.group(5)!);
                
                // For this format, assume 24-hour time if no AM/PM specified
                // Keep the hour as-is since it's likely already in 24-hour format
                
                parsed = DateTime(year, month, day, hour, minute);
                print("Parsed with pattern 4: $parsed");
                break;
              }
            }
          } catch (e) {
            print("Failed to parse with pattern $i: $e");
          }
        }

        // If still not parsed, try the fallback formats
        if (parsed == null) {
          for (var f in fallbackFormats) {
            try {
              String dateToParse = normalizeAmPm(backendDate);
              parsed = DateFormat(f, locale).parse(dateToParse);
              break;
            } catch (e) {
              print("Failed to parse with format: $f, error: $e");
            }
          }
        }
      }
      if (parsed == null) {
        print("Could not parse date: $backendDate");
        return backendDate;
      }
      
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
      
      /// Format with proper locale
      String formatted = DateFormat(formatType ?? "dd MMM yyyy - hh:mm a", locale)
          .format(localTime);
      if (locale == LangCodeHelper.langAR) {
        String arabicFormatted = _toArabicNumbers(formatted);
        return arabicFormatted;
      }
      return formatted;
    } catch (e) {
      print("Error in getDate: $e");
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