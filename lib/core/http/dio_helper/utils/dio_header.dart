import 'package:injectable/injectable.dart';

import '../../../helpers/global_state.dart';

@lazySingleton
class DioHeader {
  Map<String, String> call() {
    String? token = GlobalState.instance.get("token");
    String lang = GlobalState.instance.get('lang');
    print(lang);
    return {
      "Content-Type": "application/json",
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'lang': lang,
    };
  }
}
