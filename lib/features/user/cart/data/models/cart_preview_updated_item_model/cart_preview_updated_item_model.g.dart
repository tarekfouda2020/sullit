// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_preview_updated_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPreviewUpdatedItemModel _$$_CartPreviewUpdatedItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartPreviewUpdatedItemModel(
      id: (json['id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      productName: json['product_name'] as String,
      oldQuantity: (json['old_quantity'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_CartPreviewUpdatedItemModelToJson(
        _$_CartPreviewUpdatedItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'old_quantity': instance.oldQuantity,
      'quantity': instance.quantity,
    };
