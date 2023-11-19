import 'package:flutter/material.dart';

abstract class AppTheme {
  static var fontFamily = "Quicksand";
  // static var fontFamily = GoogleFonts.elMessiri().fontFamily;

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
