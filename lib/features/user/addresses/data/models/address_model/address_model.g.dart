// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      id: (json['id'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      address: json['address'] as String,
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      state: json['state'] == null
          ? null
          : StateModel.fromJson(json['state'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      fullPhone: json['full_phone'] as String,
      countryCode: json['country_code'] as String,
      setDefault: json['set_default'] as bool,
      lat: json['lat'] as String,
      lang: json['lang'] as String,
      isActive: json['is_active'] as bool,
      addressType: json['address_type'] as String,
      addressTypeLabel: json['address_type_label'] as String,
      streetName: json['street_name'] as String,
      buildingName: json['building_name'] as String,
      flatNumber: json['flat_number'] as String,
      selected: json['selected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address': instance.address,
      'country': instance.country?.toJson(),
      'state': instance.state?.toJson(),
      'city': instance.city?.toJson(),
      'phone': instance.phone,
      'full_phone': instance.fullPhone,
      'country_code': instance.countryCode,
      'set_default': instance.setDefault,
      'lat': instance.lat,
      'lang': instance.lang,
      'is_active': instance.isActive,
      'address_type': instance.addressType,
      'address_type_label': instance.addressTypeLabel,
      'street_name': instance.streetName,
      'building_name': instance.buildingName,
      'flat_number': instance.flatNumber,
      'selected': instance.selected,
    };
