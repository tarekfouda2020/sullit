
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_iq_place.freezed.dart';
part 'location_iq_place.g.dart';

@freezed
class LocationIQPlace with _$LocationIQPlace {
  const factory LocationIQPlace({
    @JsonKey(name: 'place_id') String? placeId,
    @JsonKey(name: 'osm_id') String? osmId,
    @JsonKey(name: 'osm_type') String? osmType,
    String? licence,
    String? lat,
    String? lon,
    List<String>? boundingbox,
    @JsonKey(name: 'class') String? placeClass,
    String? type,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'display_place') String? displayPlace,
    @JsonKey(name: 'display_address') String? displayAddress,
    LocationIQAddress? address,
  }) = _LocationIQPlace;

  factory LocationIQPlace.fromJson(Map<String, dynamic> json) =>
      _$LocationIQPlaceFromJson(json);
}



@freezed
class LocationIQAddress with _$LocationIQAddress {
  const factory LocationIQAddress({
    String? name,
    @JsonKey(name: 'house_number') String? houseNumber,
    String? road,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) = _LocationIQAddress;

  factory LocationIQAddress.fromJson(Map<String, dynamic> json) =>
      _$LocationIQAddressFromJson(json);
}
