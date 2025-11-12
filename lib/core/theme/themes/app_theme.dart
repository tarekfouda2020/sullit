import 'package:flutter/material.dart';

abstract class AppTheme {
  static var fontFamily = "Quicksand";
  static var dirhamFontFamily = "dirhamicon";
  static var sIconFontFamily = "SIcon";

  static var dirhamIcon = '\ue001';
  static var dirhamIcon2 = '\ue002';
  // static var fontFamily = GoogleFonts.elMessiri().fontFamily;

  ThemeData get theme;

  // TextTheme get textTheme;

  ColorScheme get colorScheme;
}
