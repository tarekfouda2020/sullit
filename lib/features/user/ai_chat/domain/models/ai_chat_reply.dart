import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/data/enum/ai_chat_message_type.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_message.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';

class AiChatReply extends BaseDomainModel {
  final String conversationId;
  final String reply;
  final AiChatMessageType type;
  final AiChatPayload? payload;
  final bool handoffActive;

  const AiChatReply({
    required this.conversationId,
    required this.reply,
    required this.type,
    this.payload,
    this.handoffActive = false,
  });

  AiChatMessage toMessage() {
    return AiChatMessage(
      id: 'assistant-${DateTime.now().microsecondsSinceEpoch}',
      isUser: false,
      text: reply,
      type: type,
      payload: payload,
      handoffActive: handoffActive,
    );
  }
}
