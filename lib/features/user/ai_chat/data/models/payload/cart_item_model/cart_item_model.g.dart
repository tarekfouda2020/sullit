// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartItemModel _$$_CartItemModelFromJson(Map<String, dynamic> json) =>
    _$_CartItemModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: json['price'] as String?,
      thumbnailImage: json['thumbnail_image'] as String?,
      productId: (json['product_id'] as num?)?.toInt(),
      total: json['total'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
    );

Map<String, dynamic> _$$_CartItemModelToJson(_$_CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'thumbnail_image': instance.thumbnailImage,
      'product_id': instance.productId,
      'total': instance.total,
      'currency_symbol': instance.currencySymbol,
    };
