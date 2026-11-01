// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_shop_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatShopCardModel _$$_AiChatShopCardModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatShopCardModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      typeLabel: json['type_label'] as String?,
      rating: json['rating'] as num?,
    );

Map<String, dynamic> _$$_AiChatShopCardModelToJson(
        _$_AiChatShopCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'type_label': instance.typeLabel,
      'rating': instance.rating,
    };
