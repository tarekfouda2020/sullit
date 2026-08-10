// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instore_cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstoreCartItemModel _$$_InstoreCartItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_InstoreCartItemModel(
      id: (json['id'] as num).toInt(),
      variantId: (json['variant_id'] as num).toInt(),
      qnt: (json['qnt'] as num).toInt(),
      price: json['price'] as num,
      name: json['name'] as String,
      image: json['image'] as String,
      isFresh: json['is_fresh'] as bool? ?? false,
      currentStock: (json['current_stock'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_InstoreCartItemModelToJson(
        _$_InstoreCartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variant_id': instance.variantId,
      'qnt': instance.qnt,
      'price': instance.price,
      'name': instance.name,
      'image': instance.image,
      'is_fresh': instance.isFresh,
      'current_stock': instance.currentStock,
    };
