// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_send_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AiChatSendModel _$$_AiChatSendModelFromJson(Map<String, dynamic> json) =>
    _$_AiChatSendModel(
      conversationId: json['conversation_id'] as String,
      reply: json['reply'] as String,
      type: json['type'] as String,
      handoffActive: json['handoff_active'] as bool,
    );

Map<String, dynamic> _$$_AiChatSendModelToJson(_$_AiChatSendModel instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'reply': instance.reply,
      'type': instance.type,
      'handoff_active': instance.handoffActive,
    };
