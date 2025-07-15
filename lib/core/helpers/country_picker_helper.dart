
import 'package:flutter/cupertino.dart';
import 'package:country_calling_code_picker/picker.dart';


class CountryPickerHelper {

  static Future<Country?> pickCountry(BuildContext context)async{
    Country? data = await showCountryPickerDialog(
      context,
      cornerRadius: 3,
    );
    return data;
  }

}