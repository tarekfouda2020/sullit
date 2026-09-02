// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_preview_removed_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPreviewRemovedItemModel _$$_CartPreviewRemovedItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartPreviewRemovedItemModel(
      id: (json['id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      productName: json['product_name'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$_CartPreviewRemovedItemModelToJson(
        _$_CartPreviewRemovedItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'reason': instance.reason,
    };
