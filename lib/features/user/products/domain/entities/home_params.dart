import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class HomeParams {
  final bool refresh;
  final String? macAddress;
  final UserLocationParams userLocationParams;

  HomeParams({
    required this.refresh,
    this.macAddress,
    UserLocationParams? userLocationParams,
  }) : userLocationParams = userLocationParams ?? UserLocationParams();

  String paramToQuery() {
    final deviceId = macAddress ??
        GlobalState.instance.get(GlobalStateKeys.deviceToken)?.toString();
    if (deviceId == null || deviceId.isEmpty) return '';
    return '?mac_address=$deviceId';
  }

  Map<String, dynamic> toJson() => userLocationParams.toJson();
}
