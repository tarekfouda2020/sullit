
import 'package:flutter/cupertino.dart';
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


  static Country defaultCountry(){
    return const Country(
        "United Arab Emirates","flags/are.png","AE","+971"
    );
  }

}