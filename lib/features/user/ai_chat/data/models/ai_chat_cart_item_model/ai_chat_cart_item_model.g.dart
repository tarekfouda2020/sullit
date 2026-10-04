// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatCartItemModel _$$_AiChatCartItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatCartItemModel(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AiChatCartItemModelToJson(
        _$_AiChatCartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'name': instance.name,
    };
