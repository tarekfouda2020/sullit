// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_modification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderModificationModel _$$_OrderModificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderModificationModel(
      id: (json['id'] as num).toInt(),
      action: json['action'] as String,
      actionLabel: json['action_label'] as String,
      notes: json['notes'] as String,
      oldPrice: json['old_price'] as String?,
      newPrice: json['new_price'] as String?,
      oldQuantity: (json['old_quantity'] as num?)?.toInt(),
      newQuantity: (json['new_quantity'] as num?)?.toInt(),
      oldProduct:
          NewProductModel.fromJson(json['old_product'] as Map<String, dynamic>),
      newProduct: json['new_product'] == null
          ? null
          : NewProductModel.fromJson(
              json['new_product'] as Map<String, dynamic>),
      oldVariation: json['old_variation'] as String,
      newVariation: json['new_variation'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$_OrderModificationModelToJson(
        _$_OrderModificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'action_label': instance.actionLabel,
      'notes': instance.notes,
      'old_price': instance.oldPrice,
      'new_price': instance.newPrice,
      'old_quantity': instance.oldQuantity,
      'new_quantity': instance.newQuantity,
      'old_product': instance.oldProduct,
      'new_product': instance.newProduct,
      'old_variation': instance.oldVariation,
      'new_variation': instance.newVariation,
      'created_at': instance.createdAt,
    };

_$_NewProductModel _$$_NewProductModelFromJson(Map<String, dynamic> json) =>
    _$_NewProductModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      barcode: json['barcode'] as String,
      unit: json['unit'] as String,
      isFresh: json['is_fresh'] as bool,
      thumbnailImage: json['thumbnail_image'] as String,
    );

Map<String, dynamic> _$$_NewProductModelToJson(_$_NewProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'barcode': instance.barcode,
      'unit': instance.unit,
      'is_fresh': instance.isFresh,
      'thumbnail_image': instance.thumbnailImage,
    };
