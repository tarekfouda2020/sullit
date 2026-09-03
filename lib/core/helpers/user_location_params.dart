import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/global_state.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserLocationParams {
  final LatLng? location;

  UserLocationParams() : location = _fromGlobalState();

  static LatLng? _fromGlobalState() {
    final cached = GlobalState.instance.get(GlobalStateKeys.userLocation);
    return cached is LatLng ? cached : null;
  }

  Map<String, dynamic> toJson() {
    final loc = location;
    if (loc == null) return {};
    return {
      "latitude": loc.latitude,
      "longitude": loc.longitude,
    };
  }
}