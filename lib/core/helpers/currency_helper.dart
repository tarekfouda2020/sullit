import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:intl/intl.dart';

/// Helper class for formatting currency values with UAE Dirham symbol
class CurrencyHelper {
  static String get symbol =>
      (GlobalState.instance.get(GlobalStateKeys.currencySymbol) as String?) ?? '';

  static const String dirhamSymbol = '\ue001';

  static const String dirhamSymbolAlt = '\ue002';

  static const String dirhamFontFamily = 'dirhamicon';


  static String formatCurrency(
    double amount, {
    bool showDecimals = true,
    int decimalPlaces = 2,
    bool useAlternativeSymbol = false,
    String locale = 'en_AE',
  }) {
    final symbol = useAlternativeSymbol ? dirhamSymbolAlt : dirhamSymbol;
    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: showDecimals ? decimalPlaces : 0,
    );
    return formatter.format(amount);
  }


  static String formatCurrencyWithSymbol(
    double amount, {
    required String symbol,
    bool showDecimals = true,
    int decimalPlaces = 2,
    String locale = 'en_AE',
  }) {
    final formatter = NumberFormat.currency(
      locale: locale,
      symbol: symbol,
      decimalDigits: showDecimals ? decimalPlaces : 0,
    );
    return formatter.format(amount);
  }

  /// Get the Dirham symbol as a string
  ///
  /// [useAlternativeSymbol] - Whether to use the alternative symbol
  static String getDirhamSymbol({bool useAlternativeSymbol = false}) {
    return useAlternativeSymbol ? dirhamSymbolAlt : dirhamSymbol;
  }

  /// Create a TextStyle for Dirham symbols

  static TextStyle getDirhamTextStyle({
    double? size,
    Color? color,
    FontWeight? weight,
    bool useAlternativeSymbol = false,
  }) {
    return TextStyle(
      fontFamily: dirhamFontFamily,
      fontSize: size,
      color: color,
      fontWeight: weight ?? FontWeight.w300,
      height: 1.0,
    );
  }

  /// Parse a currency string and extract the numeric value
  ///
  /// [currencyString] - The currency string to parse
  /// [locale] - The locale for parsing
  static double parseCurrency(String currencyString,
      {String locale = 'en_AE'}) {
    // Remove currency symbols and parse
    final cleanString = currencyString
        .replaceAll(dirhamSymbol, '')
        .replaceAll(dirhamSymbolAlt, '')
        .replaceAll('د.إ', '')
        .replaceAll('AED', '')
        .replaceAll(',', '')
        .trim();

    return double.tryParse(cleanString) ?? 0.0;
  }

  /// Check if a string contains Dirham symbols
  ///
  /// [text] - The text to check
  static bool containsDirhamSymbol(String text) {
    return text.contains(dirhamSymbol) || text.contains(dirhamSymbolAlt);
  }

  /// Replace old currency symbols with Dirham symbols
  ///
  /// [text] - The text to process
  /// [useAlternativeSymbol] - Whether to use the alternative symbol
  static String replaceWithDirhamSymbol(
    String text, {
    bool useAlternativeSymbol = false,
  }) {
    final symbol = useAlternativeSymbol ? dirhamSymbolAlt : dirhamSymbol;

    return text
        .replaceAll('د.إ', symbol)
        .replaceAll('AED', symbol)
        .replaceAll('د.إ', symbol);
  }
}

/// Extension for easy currency formatting on double values
extension CurrencyFormatting on double {
  /// Format as Dirham currency
  String toDirham({
    bool showDecimals = true,
    int decimalPlaces = 2,
    bool useAlternativeSymbol = false,
    String locale = 'en_AE',
  }) {
    return CurrencyHelper.formatCurrency(
      this,
      showDecimals: showDecimals,
      decimalPlaces: decimalPlaces,
      useAlternativeSymbol: useAlternativeSymbol,
      locale: locale,
    );
  }

  /// Format as Dirham currency with custom symbol
  String toCurrencyWithSymbol(
    String symbol, {
    bool showDecimals = true,
    int decimalPlaces = 2,
    String locale = 'en_AE',
  }) {
    return CurrencyHelper.formatCurrencyWithSymbol(
      this,
      symbol: symbol,
      showDecimals: showDecimals,
      decimalPlaces: decimalPlaces,
      locale: locale,
    );
  }
}

/// Extension for easy currency formatting on int values
extension IntCurrencyFormatting on int {
  /// Format as Dirham currency
  String toDirham({
    bool showDecimals = false,
    bool useAlternativeSymbol = false,
    String locale = 'en_AE',
  }) {
    return CurrencyHelper.formatCurrency(
      toDouble(),
      showDecimals: showDecimals,
      decimalPlaces: 0,
      useAlternativeSymbol: useAlternativeSymbol,
      locale: locale,
    );
  }
}
