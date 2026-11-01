// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_view_all_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatViewAllModel _$$_AiChatViewAllModelFromJson(
        Map<String, dynamic> json) =>
    _$_AiChatViewAllModel(
      screen: json['screen'] as String?,
      query: json['query'] == null
          ? null
          : AiChatViewAllQueryModel.fromJson(
              json['query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AiChatViewAllModelToJson(
        _$_AiChatViewAllModel instance) =>
    <String, dynamic>{
      'screen': instance.screen,
      'query': instance.query?.toJson(),
    };
