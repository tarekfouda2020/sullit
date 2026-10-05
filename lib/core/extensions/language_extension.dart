import 'package:flutter/cupertino.dart';

extension LanguageExtension on BuildContext {
  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
}
