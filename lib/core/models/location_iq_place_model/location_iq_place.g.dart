// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_iq_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationIQPlace _$$_LocationIQPlaceFromJson(Map<String, dynamic> json) =>
    _$_LocationIQPlace(
      placeId: json['place_id'] as String?,
      osmId: json['osm_id'] as String?,
      osmType: json['osm_type'] as String?,
      licence: json['licence'] as String?,
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      boundingbox: (json['boundingbox'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      placeClass: json['class'] as String?,
      type: json['type'] as String?,
      displayName: json['display_name'] as String?,
      displayPlace: json['display_place'] as String?,
      displayAddress: json['display_address'] as String?,
      address: json['address'] == null
          ? null
          : LocationIQAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationIQPlaceToJson(_$_LocationIQPlace instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'osm_id': instance.osmId,
      'osm_type': instance.osmType,
      'licence': instance.licence,
      'lat': instance.lat,
      'lon': instance.lon,
      'boundingbox': instance.boundingbox,
      'class': instance.placeClass,
      'type': instance.type,
      'display_name': instance.displayName,
      'display_place': instance.displayPlace,
      'display_address': instance.displayAddress,
      'address': instance.address,
    };

_$_LocationIQAddress _$$_LocationIQAddressFromJson(Map<String, dynamic> json) =>
    _$_LocationIQAddress(
      name: json['name'] as String?,
      houseNumber: json['house_number'] as String?,
      road: json['road'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_LocationIQAddressToJson(
        _$_LocationIQAddress instance) =>
    <String, dynamic>{
      'name': instance.name,
      'house_number': instance.houseNumber,
      'road': instance.road,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };
