// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShippingAddressModel _$$_ShippingAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShippingAddressModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      address: json['address'] as String,
      postalCode: json['postal_code'] as String,
      phone: json['phone'] as String,
      setDefault: json['set_default'] as bool,
      lat: json['lat'] as String,
      lang: json['lang'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$_ShippingAddressModelToJson(
        _$_ShippingAddressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'phone': instance.phone,
      'set_default': instance.setDefault,
      'lat': instance.lat,
      'lang': instance.lang,
      'is_active': instance.isActive,
    };
