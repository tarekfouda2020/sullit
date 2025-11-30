import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Helper class for formatting currency values with UAE Dirham symbol
class CurrencyHelper {
  /// The standard Dirham symbol (u+e001)
  static const String dirhamSymbol = '\ue001';
  
  /// The alternative Dirham symbol (u+e002)
  static const String dirhamSymbolAlt = '\ue002';
  
  /// The font family for Dirham symbols
  static const String dirhamFontFamily = 'dirhamicon';

  /// Format a number as currency with Dirham symbol
  /// 
  /// [amount] - The amount to format
  /// [showDecimals] - Whether to show decimal places
  /// [decimalPlaces] - Number of decimal places to show
  /// [useAlternativeSymbol] - Whether to use the alternative symbol
  /// [locale] - The locale for formatting (defaults to 'en_AE')
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

  /// Format a number as currency with custom symbol
  /// 
  /// [amount] - The amount to format
  /// [symbol] - The currency symbol to use
  /// [showDecimals] - Whether to show decimal places
  /// [decimalPlaces] - Number of decimal places to show
  /// [locale] - The locale for formatting
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
  /// 
  /// [size] - Font size
  /// [color] - Text color
  /// [weight] - Font weight
  /// [useAlternativeSymbol] - Whether to use the alternative symbol
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
  static double parseCurrency(String currencyString, {String locale = 'en_AE'}) {
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






