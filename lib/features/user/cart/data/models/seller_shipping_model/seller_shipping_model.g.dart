// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller_shipping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SellerShippingModel _$$_SellerShippingModelFromJson(
        Map<String, dynamic> json) =>
    _$_SellerShippingModel(
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      physical: json['physical'] as bool,
      activePickUp: json['active_pickup'] as bool,
      pickup: PickUpModel.fromJson(json['pickup'] as Map<String, dynamic>),
      activeDelivery: json['active_delivery'] as bool,
      delivery: json['delivery'] == null
          ? null
          : DeliveryModel.fromJson(json['delivery'] as Map<String, dynamic>),
      ownerId: json['owner_id'] as int,
    );

Map<String, dynamic> _$$_SellerShippingModelToJson(
        _$_SellerShippingModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'physical': instance.physical,
      'active_pickup': instance.activePickUp,
      'pickup': instance.pickup.toJson(),
      'active_delivery': instance.activeDelivery,
      'delivery': instance.delivery?.toJson(),
      'owner_id': instance.ownerId,
    };
