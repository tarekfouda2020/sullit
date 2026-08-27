import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/location_service.dart';

class HomeParams {
  final bool refresh;
  final double? latitude;
  final double? longitude;
  final String? macAddress;

  HomeParams({
    required this.refresh,
    this.latitude,
    this.longitude,
    this.macAddress,
  });

  factory HomeParams.fromLocation({
    required bool refresh,
    String? macAddress,
  }) {
    final location = LocationService.instance.cachedUserLocation();
    return HomeParams(
      refresh: refresh,
      latitude: location?.latitude,
      longitude: location?.longitude,
      macAddress: macAddress,
    );
  }

  String paramToQuery() {
    final parts = <String>[];
    final deviceId = macAddress ??
        GlobalState.instance.get(GlobalStateKeys.deviceToken)?.toString();
    if (deviceId != null && deviceId.isNotEmpty) {
      parts.add('mac_address=$deviceId');
    }
    if (latitude != null && longitude != null) {
      parts.add('latitude=$latitude');
      parts.add('longitude=$longitude');
    }
    if (parts.isEmpty) return '';
    return '?${parts.join('&')}';
  }
}
