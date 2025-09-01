
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/helpers/country_localization_helper.dart';


class CountryPickerHelper {

  static Future<Country?> pickCountry(BuildContext context)async{
    Country? data = await showCountryPickerSheet(
      context,
      cancelWidget: PositionedDirectional(
        end: 10,
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Text(
              tr("cancel"),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      cornerRadius: 3,
      forceArabic: true
    );
    return data;
  }

  /// Pick country with forced Arabic display
  static Future<Country?> pickCountryForceArabic(BuildContext context)async{
    Country? data = await showCountryPickerSheet(
      context,
      cancelWidget: PositionedDirectional(
        end: 10,
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            decoration: BoxDecoration(
              color: context.colors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child:  Text(
              tr("cancel"),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      cornerRadius: 3,
      forceArabic: true, // Force Arabic display
    );
    return data;
  }

  static Future<Country?> getCountryByCallingCode(BuildContext context, String callingCode) async {
    try {
      final countries = await getCountries(context);
      return countries.firstWhere(
        (country) => country.callingCode == callingCode,
        orElse: () => throw StateError('No country found with calling code: $callingCode'),
      );
    } catch (e) {
      return null;
    }
  }

  static Future<Country> defaultCountry(BuildContext context) async {
    try {
      return await getDefaultCountry(context);
    } catch (e) {
      return const Country(
          "United Arab Emirates","flags/are.png","AE","+971"
      );
    }
  }

  static Country defaultCountrySync(){
    return const Country(
        "United Arab Emirates","flags/are.png","AE","+971"
    );
  }

  /// Get localized country name for display
  static String getLocalizedCountryName(String countryCode, BuildContext context) {
    return CountryLocalizationHelper.getLocalizedCountryName(countryCode, context);
  }

  /// Get localized display name for a country object
  static String getLocalizedDisplayName(Country country, BuildContext context) {
    return CountryLocalizationHelper.getLocalizedCountryName(country.countryCode, context);
  }

  /// Force Arabic display for country picker (for testing)
  static String getArabicDisplayName(Country country) {
    return CountryLocalizationHelper.getArabicCountryName(country.countryCode);
  }

  /// Force English display for country picker (for testing)
  static String getEnglishDisplayName(Country country) {
    return CountryLocalizationHelper.getEnglishCountryName(country.countryCode);
  }
}