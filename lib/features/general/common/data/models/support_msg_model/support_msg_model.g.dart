// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_msg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportMsgModel _$$_SupportMsgModelFromJson(Map<String, dynamic> json) =>
    _$_SupportMsgModel(
      isSender: json['is_sender'] as bool,
      createdAt: json['created_at'] as String,
      msg: json['message'] as String,
      msgType: json['message_type'] as String,
    );

Map<String, dynamic> _$$_SupportMsgModelToJson(_$_SupportMsgModel instance) =>
    <String, dynamic>{
      'is_sender': instance.isSender,
      'created_at': instance.createdAt,
      'message': instance.msg,
      'message_type': instance.msgType,
    };
