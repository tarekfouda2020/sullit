import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../helpers/global_state.dart';

@lazySingleton
class DioHeader {
  Map<String, String> call() {
    String? token = GlobalState.instance.get(GlobalStateKeys.token);
    // String? countryCode = GlobalState.instance.get(GlobalStateKeys.countryCode);
    String lang = GlobalState.instance.get(LangCodeHelper.langKey);
    return {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      'App-Language': lang,
      if (token != null) 'Authorization': 'Bearer $token',
      // if (countryCode != null) 'X-App-Country': "AE",
    };
  }
}
