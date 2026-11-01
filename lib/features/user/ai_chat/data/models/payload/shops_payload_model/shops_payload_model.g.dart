// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopsPayloadModel _$$_ShopsPayloadModelFromJson(Map<String, dynamic> json) =>
    _$_ShopsPayloadModel(
      shops: (json['shops'] as List<dynamic>?)
              ?.map((e) =>
                  AiChatShopCardModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AiChatShopCardModel>[],
      total: (json['total'] as num?)?.toInt(),
      returned: (json['returned'] as num?)?.toInt(),
      viewAll: json['view_all'] == null
          ? null
          : AiChatViewAllModel.fromJson(
              json['view_all'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShopsPayloadModelToJson(
        _$_ShopsPayloadModel instance) =>
    <String, dynamic>{
      'shops': instance.shops.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'returned': instance.returned,
      'view_all': instance.viewAll?.toJson(),
    };
