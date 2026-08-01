// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_shipping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyShippingModel _$$_PharmacyShippingModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyShippingModel(
      ownerId: (json['owner_id'] as num).toInt(),
      name: json['name'] as String,
      physical: json['physical'] as bool,
      activeDelivery: json['active_delivery'] as bool,
      activePickup: json['active_pickup'] as bool,
      deliveryMessage: json['delivery_message'] as String?,
      deliveryObject: json['delivery'] == null
          ? null
          : DeliveryObjectModel.fromJson(
              json['delivery'] as Map<String, dynamic>),
      pickupModel: json['pickup'] == null
          ? null
          : PharmacyPickUpModel.fromJson(
              json['pickup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyShippingModelToJson(
        _$_PharmacyShippingModel instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId,
      'name': instance.name,
      'physical': instance.physical,
      'active_delivery': instance.activeDelivery,
      'active_pickup': instance.activePickup,
      'delivery_message': instance.deliveryMessage,
      'delivery': instance.deliveryObject?.toJson(),
      'pickup': instance.pickupModel?.toJson(),
    };

_$_DeliveryObjectModel _$$_DeliveryObjectModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryObjectModel(
      transitIn: json['transit_in'] as String,
    );

Map<String, dynamic> _$$_DeliveryObjectModelToJson(
        _$_DeliveryObjectModel instance) =>
    <String, dynamic>{
      'transit_in': instance.transitIn,
    };

_$_PharmacyPickUpModel _$$_PharmacyPickUpModelFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyPickUpModel(
      id: (json['id'] as num).toInt(),
      address: json['address'] as String,
      postalCode: json['postal_code'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lang: (json['lang'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PharmacyPickUpModelToJson(
        _$_PharmacyPickUpModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'lat': instance.lat,
      'lang': instance.lang,
    };
