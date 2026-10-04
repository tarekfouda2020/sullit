import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/models/ai_chat_payload_model/ai_chat_payload_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_reply.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_chat_send_model.freezed.dart';
part 'ai_chat_send_model.g.dart';

@freezed
class AiChatSendModel extends BaseApiModel<AiChatReply> with _$AiChatSendModel {
  const AiChatSendModel._();

  @JsonSerializable(explicitToJson: true)
  const factory AiChatSendModel({
    @JsonKey(name: 'conversation_id') required String conversationId,
    required String reply,
    required String type,
    AiChatPayloadModel? payload,
    @JsonKey(name: 'handoff_active') required bool handoffActive,
  }) = _AiChatSendModel;

  factory AiChatSendModel.fromJson(Map<String, dynamic> json) =>
      _$AiChatSendModelFromJson(json);

  @override
  AiChatReply toDomainModel() {
    return AiChatReply(
      conversationId: conversationId,
      reply: reply,
      type: type,
      payload: payload?.toDomainModel(),
      handoffActive: handoffActive,
    );
  }
}
