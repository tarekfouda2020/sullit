import 'dart:convert';

import 'package:flutter_tdd/core/package/country_calling_code_picker-2.0.1/lib/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';

import 'country.dart';

///This function returns list of countries
Future<List<Country>> getCountries(BuildContext context) async {
  String rawData = await DefaultAssetBundle.of(context).loadString(
      'packages/country_calling_code_picker/raw/country_codes.json');
  final parsed = json.decode(rawData.toString()).cast<Map<String, dynamic>>();
  return parsed.map<Country>((json) => new Country.fromJson(json)).toList();
}

///This function returns an user's current country. User's sim country code is matched with the ones in the list.
///If there is no sim in the device, first country in the list will be returned.
///This function returns an user's current country. User's sim country code is matched with the ones in the list.
///If there is no sim in the device, first country in the list will be returned.
Future<Country> getDefaultCountry(BuildContext context) async {
  final list = await getCountries(context);
  try {
    final locale = Localizations.maybeLocaleOf(context);
    final countryCode = locale?.countryCode;
    if (countryCode == null || countryCode.isEmpty) {
      return list.first;
    }
    return list.firstWhere(
      (element) => element.countryCode.toLowerCase() == countryCode.toLowerCase(),
      orElse: () => list.first,
    );
  } catch (e) {
    return list.first;
  }
}

///This function returns an country whose [countryCode] matches with the passed one.
Future<Country?> getCountryByCountryCode(
    BuildContext context, String countryCode) async {
  final list = await getCountries(context);
  return list.firstWhere((element) => element.countryCode == countryCode);
}

Future<Country?> showCountryPickerSheet(BuildContext context,
    {Widget? title,
    Widget? cancelWidget,
    double cornerRadius = 35,
    bool focusSearchBox = false,
    double heightFactor = 0.9,
    bool forceArabic = false}) {
  assert(heightFactor <= 0.9 && heightFactor >= 0.4,
      'heightFactor must be between 0.4 and 0.9');
  return showModalBottomSheet<Country?>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cornerRadius),
              topRight: Radius.circular(cornerRadius))),
      builder: (_) {
        return Container(
          height: MediaQuery.of(context).size.height * heightFactor,
          child: Column(
            children: <Widget>[
              SizedBox(height: 16),
              Stack(
                children: <Widget>[
                  cancelWidget ??
                      Positioned(
                        right: 8,
                        top: 4,
                        bottom: 0,
                        child: TextButton(
                            child: Text('Cancel', style: TextStyle(
                              color: context.colors.white
                            ),),
                            onPressed: () => Navigator.pop(context)),
                      ),
                  Center(
                    child: title ??
                        Text(
                          tr("chooseRegion"),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Expanded(
                child: CountryPickerWidget(
                  onSelected: (country) => Navigator.of(context).pop(country),
                  forceArabic: forceArabic,
                ),
              ),
            ],
          ),
        );
      });
}

Future<Country?> showCountryPickerDialog(
  BuildContext context, {
  Widget? title,
  double cornerRadius = 35,
  bool focusSearchBox = false,
  bool forceArabic = false,
}) {
  return showDialog<Country?>(
    context: context,
    barrierDismissible: true,
    builder: (_) => Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(cornerRadius),
      )),
      child: Column(
        children: <Widget>[
          SizedBox(height: 16),
          Stack(
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              Center(
                child: title ??
                    const Text(
                      'Choose region',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              ),
            ],
          ),
          SizedBox(height: 16),
                      Expanded(
              child: CountryPickerWidget(
                onSelected: (country) => Navigator.of(context).pop(country),
                forceArabic: forceArabic,
              ),
            ),
        ],
      ),
    ),
  );
}
