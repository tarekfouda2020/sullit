import 'package:flutter_tdd/core/localization/localization_methods.dart';

extension EmailFieldExtension on String {
  bool isValidEmail() {
    final emailRegex = RegExp(
        r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
    );

    return emailRegex.hasMatch(trim());
  }

  bool isNumbersOrEmpty(String text) {
    return RegExp(r'^[0-9]*$').hasMatch(text);
  }






}