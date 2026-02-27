import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:intl/intl.dart';

import '../../features/user/base/data/enums/lang_type_enum.dart';

class DateTimeHelper {


  static String formatDate({required DateTime date, required String formatType}) {
   try{
    // return  DateFormat(formatType,_getLang()).format(date);
    return  DateFormat(formatType,"en").format(date);
   } catch(e){
     return   DateFormat(formatType,"en").format(date);
   }
  }


  static DateTime convertToDateTime({required String strDate}) {
    String cleaned = strDate.replaceAll(RegExp(r"\s(AM|PM)$",caseSensitive: false), "");
    return DateFormat("dd-MM-yyyy HH:mm").parse(cleaned);
  }


  static String _getLang(){
    var lang = "en";
    var code = GlobalState.instance.get(LangCodeHelper.langKey);
    if (code == LangTypeEnum.arabic.getLangCode()) {
      lang = LangCodeHelper.langAR;
    }
    if (code == LangTypeEnum.bangladesh.getLangCode()) {
      lang = LangCodeHelper.langBN;
    }
    if (code == LangTypeEnum.urdu.getLangCode()) {
      lang = LangCodeHelper.langUR;
    }
    return lang;
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




}