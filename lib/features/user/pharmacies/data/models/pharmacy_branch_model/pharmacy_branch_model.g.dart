// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyBranchModel _$$_PharmacyBranchModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyBranchModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      mapDescription: json['map_desc'] as String,
      isDefault: json['is_default'] as bool,
      distanceKm: (json['distance_km'] as num?)?.toDouble(),
      state: PharmacyBranchLocationModel.fromJson(
          json['state'] as Map<String, dynamic>),
      city: PharmacyBranchLocationModel.fromJson(
          json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyBranchModelToJson(
        _$_PharmacyBranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'map_desc': instance.mapDescription,
      'is_default': instance.isDefault,
      'distance_km': instance.distanceKm,
      'state': instance.state,
      'city': instance.city,
    };

_$_PharmacyBranchLocationModel _$$_PharmacyBranchLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyBranchLocationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_PharmacyBranchLocationModelToJson(
        _$_PharmacyBranchLocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
