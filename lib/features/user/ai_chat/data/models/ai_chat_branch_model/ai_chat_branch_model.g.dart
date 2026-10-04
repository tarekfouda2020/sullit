// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_branch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatBranchModel _$$_AiChatBranchModelFromJson(Map<String, dynamic> json) =>
    _$_AiChatBranchModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      isOpen: json['is_open'] as bool?,
    );

Map<String, dynamic> _$$_AiChatBranchModelToJson(
        _$_AiChatBranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_open': instance.isOpen,
    };
