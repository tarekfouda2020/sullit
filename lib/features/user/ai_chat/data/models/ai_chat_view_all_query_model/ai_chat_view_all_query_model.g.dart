// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_view_all_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatViewAllQueryModel _$$_AiChatViewAllQueryModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatViewAllQueryModel(
      keyword: json['keyword'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      shopId: (json['shop_id'] as num?)?.toInt(),
      branchId: (json['branch_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      offerType: json['offer_type'] as String?,
    );

Map<String, dynamic> _$$_AiChatViewAllQueryModelToJson(
        _$_AiChatViewAllQueryModel instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'shop_id': instance.shopId,
      'branch_id': instance.branchId,
      'type': instance.type,
      'offer_type': instance.offerType,
    };
