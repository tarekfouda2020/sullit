// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PickUpModel _$$_PickUpModelFromJson(Map<String, dynamic> json) =>
    _$_PickUpModel(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      postalCode: json['postal_code'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lang: (json['lang'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PickUpModelToJson(_$_PickUpModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'lat': instance.lat,
      'lang': instance.lang,
    };
