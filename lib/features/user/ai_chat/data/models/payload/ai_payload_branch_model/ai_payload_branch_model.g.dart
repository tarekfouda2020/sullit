// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_payload_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiPayloadBranchModel _$$_AiPayloadBranchModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiPayloadBranchModel(
      shop: json['shop'] == null
          ? null
          : AiChatShopCardModel.fromJson(json['shop'] as Map<String, dynamic>),
      branches: (json['branches'] as List<dynamic>?)
              ?.map(
                  (e) => AiChatBranchModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AiChatBranchModel>[],
      total: (json['total'] as num?)?.toInt(),
      returned: (json['returned'] as num?)?.toInt(),
      viewAll: json['view_all'] == null
          ? null
          : AiChatViewAllModel.fromJson(
              json['view_all'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AiPayloadBranchModelToJson(
        _$_AiPayloadBranchModel instance) =>
    <String, dynamic>{
      'shop': instance.shop?.toJson(),
      'branches': instance.branches.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'returned': instance.returned,
      'view_all': instance.viewAll?.toJson(),
    };
