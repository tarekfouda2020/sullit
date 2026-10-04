import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/ai_chat/domain/models/ai_chat_payload.dart';

class AiChatMessage extends BaseDomainModel {
  final String id;
  final bool isUser;
  final String text;
  final String type;
  final AiChatPayload? payload;
  final bool handoffActive;

  const AiChatMessage({
    required this.id,
    required this.isUser,
    required this.text,
    this.type = 'text',
    this.payload,
    this.handoffActive = false,
  });

  bool get hasCard => type != 'text' && payload != null;
}
