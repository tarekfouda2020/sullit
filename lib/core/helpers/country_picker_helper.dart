
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';


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
            child: const Text(
              'Cancel',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      cornerRadius: 3,
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

}