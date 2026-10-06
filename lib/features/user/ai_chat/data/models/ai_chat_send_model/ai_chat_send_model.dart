import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/enum/ai_chat_message_type.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/payload/ai_chat_payload_parser.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_send_model.freezed.dart';
part 'ai_chat_send_model.g.dart';

@Freezed(fromJson: false)
class AiChatSendModel extends BaseApiModel<AiChatReply> with _$AiChatSendModel {
  const AiChatSendModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatSendModel({
    @JsonKey(name: 'conversation_id') required String conversationId,
    required String reply,
    required String type,
    @JsonKey(includeFromJson: false, includeToJson: false)
    BaseApiModel<AiChatPayload>? payload,
    @JsonKey(name: 'handoff_active') required bool handoffActive,
  }) = _AiChatSendModel;

  factory AiChatSendModel.fromJson(Map<String, dynamic> json) {
    final base = _$$_AiChatSendModelFromJson(json);
    final payload = AiChatPayloadParser.parse(
      type: base.type,
      payloadJson: json['payload'],
    );
    return base.copyWith(payload: payload);
  }

  @override
  AiChatReply toDomainModel() {
    return AiChatReply(
      conversationId: conversationId,
      reply: reply,
      type: AiChatMessageType.fromApi(type),
      payload: payload?.toDomainModel(),
      handoffActive: handoffActive,
    );
  }
}
