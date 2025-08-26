

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



}