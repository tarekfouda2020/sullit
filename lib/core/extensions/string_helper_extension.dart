import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';

extension StringHelperExtension on String? {

  String get parseCurrency {
  return getIt<Utilities>().parseCurrency(this ?? "");
  }

}