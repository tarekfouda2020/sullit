import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../helpers/global_state.dart';

@lazySingleton
class DioHeader {
  Map<String, String> call() {
    String? token = GlobalState.instance.get("token");
    String lang = GlobalState.instance.get(LangCodeHelper.langKey);
    return {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
      'App-Language': lang,
    };
  }
}
