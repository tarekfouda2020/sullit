import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:flutter_tdd/core/helpers/location_service.dart';

class HomeParams {
  final bool refresh;
  final double? latitude;
  final double? longitude;

  HomeParams({
    required this.refresh,
    this.latitude,
    this.longitude,
  });

  factory HomeParams.fromLocation({required bool refresh}) {
    final location = LocationService.instance.userLocation;
    return HomeParams(
      refresh: refresh,
      latitude: location?.latitude,
      longitude: location?.longitude,
    );
  }

  String paramToQuery() {
    final parts = <String>[];
    final deviceId = GlobalState.instance.get(GlobalStateKeys.deviceToken);
    if (deviceId != null && deviceId.toString().isNotEmpty) {
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
